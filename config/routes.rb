Rails.application.routes.draw do
  get 'mongoid/index'
  get 'welcome/index'
  get 'map/index'
  get 'mongo/index'
  # get 'mongoid/index'

  resources :bornes,:mongoid, :mongo
  root 'welcome#index'

end
