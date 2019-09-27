Rails.application.routes.draw do
  mount Ahoy::Engine => "/argos" if Ahoy.api
end

Ahoy::Engine.routes.draw do
  scope module: "argos" do
    resources :visits, only: [:create]
    resources :events, only: [:create]
  end
end
