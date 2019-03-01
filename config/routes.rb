Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
   namespace :v1 do
     resources :patients, only: [:show]
     resources :doctors, only: [:index, :show, :update]
     resources :appoinment, only: [:index, :show, :update, :create, :destroy]
    end
  end


end
