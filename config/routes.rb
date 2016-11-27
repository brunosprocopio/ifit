Rails.application.routes.draw do

  resources :pagamento_aceitos
  resources :avaliacaos
  resources :tags
  resources :alimento_quantidades
  resources :alimento_precos
  resources :prato_montados do
    collection do
      get "prato_montados/:id", to: "prato_montados#show"
      get "prato_montados/:id/calcular" , to: "prato_montados#calcular"
      post "prato_montados/:id/calcular" , to: "prato_montados#calcular"
    end
  end
  resources :prato_prontos do
    collection do
      get "prato_prontos/:id", to: "prato_prontos#show"
    end
  end
  resources :pedidos_has_pratos
  resources :pratos do
    collection do
      get "lista_pratos"
      post "lista_pratos"
      get "pratos/:id", to: "pratos#show"
    end
  end
  resources :dados_cartaos
  resources :pedidos do
  collection do
    get "pedidos/:id", to: "pedidos#compra"
  end
end
  resources :usuarios
  resources :restaurantes_proximos do
    collection do
      get "lista_rest"
      post "lista_rest"
      get "restaurantes_proximos/:id", to: "restaurantes_proximos#show"
    end
  end
  resources :endereco_restaurantes
  resources :restaurantes do
    collection do
      get "lista_rest"
      post "lista_rest"
    end
  end
  resources :endereco_sessaos
  resources :sessaos
  resource :user_sessions, only: [:create, :new, :destroy]
  root 'welcome#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
