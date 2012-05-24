module Blueprint
  module Rails
    if ::Rails.version < "3.1"
      require 'markitup-rails/railtie'
    else
      require 'markitup-rails/engine'
    end
  end
end