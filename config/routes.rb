Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "locations#index"
  get 'check_zip_code', to: 'locations#check_zip_code'
  resources :locations, only: [:index, :show, :create, :update, :destroy]
end
