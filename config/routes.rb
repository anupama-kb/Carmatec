Rails.application.routes.draw do
  resources :item_taxes
  resources :items
  resources :item_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
