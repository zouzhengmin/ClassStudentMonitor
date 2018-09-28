Rails.application.routes.draw do
  resources :myclasses
  resources :students

  root 'myclasses#index'
end
