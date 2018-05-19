Rails.application.routes.draw do
  resources :order_products
  resources :order_product_histories
  shallow do
    resources :products do
      resources :product_packs
    end

    resources :orders do
      resources :order_products do 
            end
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
