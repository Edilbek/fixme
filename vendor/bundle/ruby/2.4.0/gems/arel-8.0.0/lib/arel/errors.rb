# -*- encoding : utf-8 -*-
# frozen_string_literal: true
module Arel
  class ArelError < StandardError
  end

  class EmptyJoinError < ArelError
  end
end
