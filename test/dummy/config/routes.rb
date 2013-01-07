Rails.application.routes.draw do

  mount Markitup::Rails::Engine, at: "markitup"

  namespace :markitup do
    namespace :rails do
      post "preview", to: "preview#preview"
    end
  end

end
