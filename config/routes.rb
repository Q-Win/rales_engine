Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :items
      resources :merchants
      resources :invoices
      resources :invoice_items
      resources :customers
      resources :transactions 
    end
  end
end
