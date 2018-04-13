Rails.application.routes.draw do
  resources :guests
  resources :admins
  resources :user_profiles
  resources :users
  resources :wishlists
  resources :promises
  resources :projects
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

post '/users/:id', to: 'users#create'
delete '/users/:id', to: 'users#destroy'
patch '/users/:id', to: 'users#update'

post '/projects/:id', to: 'projects#create'
delete '/projects/:id', to: 'projects#destroy'
patch '/projects/:id', to: 'projects#update'
get '/projects/:id', to: 'projects#show', as: 'projects'

post '/wishlists/:id', to: 'wishlists#create'
delete '/wishlists/:id', to: 'wishlists#destroy'
patch '/wishlists/:id', to: 'wishlists#update'
get '/wishlists/:id', to: 'wishlists#show', as: 'wishlists'

post '/user_profiles/:username', to: 'user_profiles#create'
delete '/user_profiles/:username', to: 'user_profiles#destroy'
patch '/user_profiles/:username', to: 'user_profiles#update'
get '/user_profiles/:username', to: 'user_profiles#show', as: 'user_profiles'

post '/admins/:id', to: 'admins#create'
delete '/admins/:id', to: 'admins#destroy'
patch '/admins/:id', to: 'admins#update'

post '/guests/:id', to: 'guests#create'
delete '/guests/:id', to: 'guests#destroy'
patch '/guests/:id', to: 'guests#update'

post '/promises/:id', to: 'promises#create'
delete '/promises/:id', to: 'promises#destroy'
patch '/promises/:id', to: 'promises#update'
get '/promises/:id', to: 'promises#show', as: 'promises'


