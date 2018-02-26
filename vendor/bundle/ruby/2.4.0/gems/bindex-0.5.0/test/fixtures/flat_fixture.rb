# -*- encoding : utf-8 -*-
class FlatFixture
  def call
    raise
  rescue => exc
    exc
  end
end
