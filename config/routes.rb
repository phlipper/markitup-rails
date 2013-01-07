Markitup::Rails::Engine.routes.draw do
  post "preview", to: "preview#preview", as: "preview"
end
