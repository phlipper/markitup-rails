module Markitup::Rails

  # Public: Provide server-side preview of editor markup
  #
  class PreviewController < ApplicationController
    layout Markitup::Rails.configuration.layout

    def preview
      @content = Markitup::Rails.configuration.formatter.call(params[:data])
    end
  end

end
