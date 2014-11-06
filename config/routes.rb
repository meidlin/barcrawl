Rails.application.routes.draw do

  root'welcome#landing'
# neighborhoods

  get 'neighborhoods/new' => 'neighborhoods#new'

  post 'neighborhoods/' => 'neighborhoods#create'

  get 'neighborhoods/:id' => 'neighborhoods#show', as: :neighborhood

  get 'neighborhoods/' => 'neighborhoods#index'

  get 'neighborhoods/show'

  get 'neighborhoods/:id/edit' => 'neighborhoods#edit'

  patch 'neighborhoods/:id' => 'neighborhoods#update'

  delete 'neighborhoods/:id' => 'neighborhoods#destroy'

  get 'neighborhoods/create'

  

  

# Welcome
  get 'welcome' => 'welcome#dashboard', as: :welcome

  get 'welcome/edit'

  get 'welcome/destroy'

  get 'welcome/update'

  get 'welcome/dashboard'

  get 'welcome/new'

# Groups
  resources :groups
# Events
  resources :events
# Bars

  get 'bars' => 'bars#index', as: :bars

  get 'bars/new' => 'bars#new', as: :new_bar

  get 'bars/:id' => 'bars#show', as: :bar

  post 'bars' => 'bars#create'

  resources :bars
# Users
  resources :users

# Sessions
  resources :sessions

end
