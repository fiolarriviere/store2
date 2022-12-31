Rails.application.routes.draw do
  resources :products
  resources :carts
  resources :line_items, only: %i[create]
end
