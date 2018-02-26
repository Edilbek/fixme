# -*- encoding : utf-8 -*-
class CustomErrorFixture
  Error = Class.new(StandardError)

  def call
    raise Error
  rescue => exc
    exc
  end
end
