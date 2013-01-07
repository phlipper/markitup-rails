require "minitest_helper"

describe Markitup::Rails::Configuration do
  subject { Markitup::Rails.configuration }

  describe "layout" do
    it { subject.layout.must_equal "markitup" }

    describe "with a custom layout" do
      before do
        @old_layout = subject.layout

        Markitup::Rails.configure do |config|
          config.layout = "other"
        end
      end

      after { Markitup::Rails.configuration.layout = @old_layout }

      it { Markitup::Rails.configuration.layout.must_equal "other" }
    end
  end

  describe "formatter" do
    it { subject.must_respond_to(:formatter, :call) }
    it { subject.formatter.call("text").must_equal "text" }

    describe "with a custom formatter" do
      before do
        class Frobnicate
          def self.call(markup)
            "Frobnicate: #{markup}"
          end
        end

        @old_formatter = subject.formatter

        Markitup::Rails.configure do |config|
          config.formatter = Frobnicate
        end
      end

      after { Markitup::Rails.configuration.formatter = @old_formatter }

      it "frobnicates" do
        expected = "Frobnicate: foo"
        Markitup::Rails.configuration.formatter.call("foo").must_equal expected
      end
    end
  end

end
