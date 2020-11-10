Rails.application.routes.draw do
  get 'search/index'
  get 'welcome/index'
  get 'articles/admin'

  resources :carts
  resources :articles

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
