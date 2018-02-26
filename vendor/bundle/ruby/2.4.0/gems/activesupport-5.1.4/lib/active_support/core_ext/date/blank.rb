# -*- encoding : utf-8 -*-
require "date"

class Date #:nodoc:
  # No Date is blank:
  #
  #   Date.today.blank? # => false
  #
  # @return [false]
  def blank?
    false
  end
end
