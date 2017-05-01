Rails.application.routes.draw do
  resources :vendors
  root 'static_pages#index'
end
