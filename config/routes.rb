Rails.application.routes.draw do
  resources :faces, :path=>"arayuz"
  root "faces#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
