# -*- encoding : utf-8 -*-
require 'database_cleaner/generic/base'
require 'active_record'
require 'erb'

module DatabaseCleaner
  module ActiveRecord

    def self.available_strategies
      %w[truncation transaction deletion]
    end

    def self.config_file_location=(path)
      @config_file_location = path
    end

    def self.config_file_location
      @config_file_location ||= "#{DatabaseCleaner.app_root}/config/database.yml"
    end

    module Base
      include ::DatabaseCleaner::Generic::Base

      attr_accessor :connection_hash

      def db=(desired_db)
        @db = desired_db
        load_config
      end

      def db
        @db ||= super
      end

      def load_config
        if self.db != :default && self.db.is_a?(Symbol) && File.file?(ActiveRecord.config_file_location)
          connection_details = YAML::load(ERB.new(IO.read(ActiveRecord.config_file_location)).result)
          @connection_hash   = valid_config(connection_details)[self.db.to_s]
        end
      end

      def valid_config(connection_file)
        if !::ActiveRecord::Base.configurations.nil? && !::ActiveRecord::Base.configurations.empty?
          if connection_file != ::ActiveRecord::Base.configurations
            return ::ActiveRecord::Base.configurations
          end
        end
        connection_file
      end

      def connection_class
        @connection_class ||= if db && !db.is_a?(Symbol)
                                db
                              elsif connection_hash
                                lookup_from_connection_pool || establish_connection
                              else
                                ::ActiveRecord::Base
                              end
      end

      def self.migration_table_name
        if ::ActiveRecord::VERSION::MAJOR < 5
          ::ActiveRecord::Migrator.schema_migrations_table_name
        else
          ::ActiveRecord::SchemaMigration.table_name
        end
      end

      def self.exclusion_condition(column_name)
        result = " #{column_name} <> '#{::DatabaseCleaner::ActiveRecord::Base.migration_table_name}' "
        if ::ActiveRecord::VERSION::MAJOR >= 5
          result += " AND #{column_name} <> '#{::ActiveRecord::Base.internal_metadata_table_name}' "
        end
        result
      end

      private

      def lookup_from_connection_pool
        if ::ActiveRecord::Base.respond_to?(:descendants)
          database_name = connection_hash["database"] || connection_hash[:database]
          models        = ::ActiveRecord::Base.descendants
          models.detect { |m| m.connection_pool.spec.config[:database] == database_name }
        end
      end

      def establish_connection
        ::ActiveRecord::Base.establish_connection(connection_hash)
      end

    end
  end
end
