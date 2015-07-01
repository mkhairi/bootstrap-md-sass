require "bootstrap-md-sass/version"

module BoostrapMd
  module Sass
    class << self
      def load!
        if rails?
          register_rails_engine
        end
      end
      
      def rails?
        defined?(::Rails)
      end
      
      private
      
      def register_rails_engine
        require 'bootstrap-md-sass/engine'
      end
      
    end
  end
end

BootstrapMd::Sass.load!
