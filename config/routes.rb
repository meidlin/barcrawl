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
  get 'events/new' => 'events#new'

  post 'events/' => 'events#create'

  get 'events/:id' => 'events#show', as: :event

  get 'events/' => 'events#index'

  get 'events/show'

  get 'events/:id/edit' => 'events#edit'

  patch 'events/:id' => 'events#update'

  delete 'events/:id' => 'events#destroy'

  get 'events/create'
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
