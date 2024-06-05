Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  #root "landing#index"
  root "warehouse_form#form_entry"
  get "salida" => "landing#salida"
  #get "form_entry" => "warehouse_form#form_entry"
  get "form_out" => "warehouse_form#form_out"
end
