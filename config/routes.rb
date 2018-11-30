Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :items, only: [:index, :show] do
        get '/invoice_items', to: 'items/invoice_items#index'
        get '/merchant', to: 'items/merchants#index'
      end

      resources :merchants, only: [:index, :show] do
        get '/items', to: 'merchants/items#index'
        get '/invoices', to: 'merchants/invoices#index'
      end

      resources :invoices, only: [:index, :show] do
        get '/transactions', to: 'invoices/transactions#index'
        get '/invoice_items', to: 'invoices/invoice_items#index'
        get '/items', to: 'invoices/items#index'
      end

      resources :invoice_items, only: [:index, :show] do
         get '/invoice', to: 'invoice_items/invoices#index'
         get '/item', to: 'invoice_items/items#index'
      end

      resources :customers, only: [:index, :show] do
        get '/invoices', to: 'customers/invoices#index'
        get '/transactions', to: 'customers/transactions#index'
      end
      resources :transactions, only: [:index, :show] do
        get '/invoice', to: 'transactions/invoices#index'
      end

    end
  end
end
