# -*- encoding : utf-8 -*-
module Concurrent
  module Synchronization
    class TruffleLockableObject < AbstractLockableObject
      def new(*)
        raise NotImplementedError
      end
    end
  end
end
