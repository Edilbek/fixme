# -*- encoding : utf-8 -*-
Around do |scenario, block|
  DatabaseCleaner.cleaning(&block)
end
