Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  jsonapi_resources :users do; end
  jsonapi_resources :cars do; end
  jsonapi_resources :extras do; end
end
