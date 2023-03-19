Rails.application.routes.draw do
  root to: 'main#index'

  get '/', to: 'main#index'
  get 'index', to: 'main#index'

  get '/admin_login', to: 'admin_sessions#new'
  post '/admin_login', to: 'admin_sessions#create'
  delete '/admin_logout', to: 'admin_sessions#destroy'

  resources :users
  resources :works
  resources :work_cats
  resources :articles
  resources :article_cats
  resources :news
  resources :news_cats
  resources :cart_works
  post 'cart_works/delete', to: 'cart_works#delete'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'admin', to: 'main#admin'
  get 'admin_view', to: 'main#admin_view'
  post 'delete', to: 'main#delete'
  get 'concept', to: 'main#concept'
  get 'purchase', to: 'main#purchase'
  get 'thanks', to: 'main#thanks'
  get 'contact', to: 'main#contact'
  get 'help', to: 'main#help'
  get 'terms', to: 'main#terms'
  get 'policy', to: 'main#policy'

  get 'example', to: 'examples#index'
  get 'cost', to: 'examples#cost'
  get 'doraemon', to: 'examples#doraemon'
  post 'doraemon', to: 'examples#doraemon'


end
