require "rails"

module Markitup
  module Rails
    # Public: Initialize the Rails engine
    class Engine < ::Rails::Engine
      isolate_namespace Markitup::Rails

      initializer "markitup.rails.configuration" do
        # initialize a default configuration
        Markitup::Rails.configuration ||= Markitup::Rails::Configuration.new
      end
    end
  end
end
