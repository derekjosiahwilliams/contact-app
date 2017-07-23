Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "contact#index"
  get "/contacts/new" => "contact#new"
  post "/contacts" => "contact#create"
  get "/contacts/:id" => "contact#show"\
  
  get "/contacts/:id/edit" => "contact#edit"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"  
end
