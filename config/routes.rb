Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :items do
        get "/find", to: "search#show"
        get "/find_all", to: "search#index"
        get "/random.json", to: "random#show"
        get "/:id/invoice_items", to: "invoice_items#show"
        get "/:id/merchant", to: "merchant#show"
        get "/most_items", to: "most_items#show"
        get "/:id/best_day", to: "best_day#show"
      end
      namespace :invoices do
        get "/find", to: "search#show"
        get "/find_all", to: "search#index"
        get "/random.json", to: "random#show"
        get "/:id/transactions", to: "transactions#show"
        get "/:id/invoice_items", to: "invoice_items#show"
        get "/:id/items", to: "items#show"
        get "/:id/customer", to: "customer#show"
        get "/:id/merchant", to: "merchant#show"
      end
      namespace :invoice_items do
        get "/find", to: "search#show"
        get "/find_all", to: "search#index"
        get "/random.json", to: "random#show"
        get "/:id/invoice", to: "invoice#show"
        get "/:id/item", to: "item#show"
      end
      resources :items, only: [:index, :show]
      resources :invoices, only: [:index, :show]
      resources :invoice_items, only: [:index, :show]
      namespace :merchants do
        get "/:id/revenue", to: "revenue#show"
        get "/:id/favorite_customer", to: "favorite_customer#show"
        get "/:id/invoices", to: "invoices#index"
        get "/:id/items", to: "items#index"
        get "/find", to: "search#show"
        get "/find_all", to: "search#index"
        get "/random.json", to: "random#show"
        get "/most_revenue", to: "most_revenue#index"
        get "/revenue", to: "revenue#index"
      end
      resources :merchants, only: [:index, :show]
      namespace :transactions do
        get "/find", to: "search#show"
        get "/find_all", to: "search#index"
        get "/random.json", to: "random#show"
        get "/:id/invoice", to: "invoice#index"
      end
      resources :transactions, only: [:index, :show]
      namespace :customers do
        get "/find", to: "search#show"
        get "/find_all", to: "search#index"
        get "/random.json", to: "random#show"
        get "/:id/transactions", to: "transactions#index"
        get "/:id/invoices", to: "invoices#index"
        get "/:id/favorite_merchant", to: "favorite_merchant#show"
      end
      resources :customers, only: [:index, :show]
        get "/:id/revenue", to: "revenue#show"
      end
    end
  end
