Rails.application.routes.draw do
  resources :myclasses

  root 'myclasses#index'
end
