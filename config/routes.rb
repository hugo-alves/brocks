Brocks::Application.routes.draw do


  resources :imagens

  resources :products

  root "pages#home"    
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
    root "base#index"
    resources :users
    
  end
  
end
