Brocks::Application.routes.draw do


  resources :products

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "pins", to: "pins#index", as: "pins"
  get "pins/perfil", to: "pins#perfil", as: "perfil"
      
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
    
  end
  
end
