Brocks::Application.routes.draw do


  root "pins#busca"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "pins/perfil", to: "pins#perfil", as: "perfil"
  get "pins/busca", to: "pins#busca", as: "busca"
  post "pins/busca", to: "pins#busca", as: "novo"
  post "pins/index", to: "pins#index", as: "cenas"
  post "pins/perfil", to: "pins#perfil", as: "buscacomquery"
  get "pins/fromlink", to: "pins#fromlink", as: "sacaimagemdolinkget"    
  post "pins/fromlink", to: "pins#fromlink", as: "sacaimagemdolinkpost"
  

  devise_for :users
  
  namespace :admin do
    root "pins#busca"
    resources :users
    
  end
  
end


Rails.application.routes.draw do
  resources :pins
end