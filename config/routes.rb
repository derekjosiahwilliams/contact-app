Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/contacts" => "contact#index"
  get "/contacts/new" => "contact#new"
  post "/contacts" => "contact#create"
  get "/contacts/:id" => "contact#show"\
  
  get "/contacts/:id/edit" => "contact#edit"
end
