Rails.application.routes.draw do
  get 'search/index'
  get 'welcome/index'
  get 'cart/index'
  get '/add' => 'cart#add'
  post 'cart/index'

  resources :articles do
    resources :comments
  end

  resources :items
  resources :purchases

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
