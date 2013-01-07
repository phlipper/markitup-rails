module Markitup
  module Rails
    class << self
      attr_accessor :configuration
    end

    def self.configure
      self.configuration ||= Configuration.new
      yield configuration if block_given?
    end

    # Public: Configuration options for the Markitup::Rails module
    class Configuration
      attr_accessor :layout, :formatter

      def initialize
        @layout = "markitup"
        @formatter = -> markup { markup }
      end
    end
  end
end
