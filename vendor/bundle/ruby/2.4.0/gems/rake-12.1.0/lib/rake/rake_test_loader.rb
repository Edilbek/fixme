# -*- encoding : utf-8 -*-
# frozen_string_literal: true
require "rake"

# Load the test files from the command line.
argv = ARGV.select do |argument|
  begin
    case argument
    when /^-/ then
      argument
    when /\*/ then
      FileList[argument].to_a.each do |file|
        require File.expand_path file
      end

      false
    else
      require File.expand_path argument

      false
    end
  rescue LoadError => e
    abort "\nFile does not exist: #{e.path}\n\n"
  end
end

ARGV.replace argv
