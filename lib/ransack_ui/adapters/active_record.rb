# Extend original ransack adapter first
require 'ransack'

module RansackUI
  module Adapters
    module ActiveRecord
      module Base
        def self.extended(base)
          ::ActiveRecord::Base.extend(::Ransack::Adapters::ActiveRecord::Base)
        end
      end
    end
  end
end
