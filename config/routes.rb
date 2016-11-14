# == Route Map
#
#        Prefix Verb   URI Pattern                    Controller#Action
#          root GET    /                              artists#index
#        logout DELETE /search(.:format)              songs#search
#       reviews GET    /reviews(.:format)             reviews#index
#        review GET    /reviews/:id(.:format)         reviews#show
#         songs GET    /songs(.:format)               songs#index
#               POST   /songs(.:format)               songs#create
#      new_song GET    /songs/new(.:format)           songs#new
#     edit_song GET    /songs/:id/edit(.:format)      songs#edit
#          song GET    /songs/:id(.:format)           songs#show
#               PATCH  /songs/:id(.:format)           songs#update
#               PUT    /songs/:id(.:format)           songs#update
#               DELETE /songs/:id(.:format)           songs#destroy
# rating_artist GET    /artists/:id/rating(.:format)  artists#rating
#               GET    /artists/sort/:field(.:format) artists#sort
#       artists GET    /artists(.:format)             artists#index
#               POST   /artists(.:format)             artists#create
#    new_artist GET    /artists/new(.:format)         artists#new
#   edit_artist GET    /artists/:id/edit(.:format)    artists#edit
#        artist GET    /artists/:id(.:format)         artists#show
#               PATCH  /artists/:id(.:format)         artists#update
#               PUT    /artists/:id(.:format)         artists#update
#               DELETE /artists/:id(.:format)         artists#destroy
#

Rails.application.routes.draw do
  # resources :reviews, except: :destroy
  
  root 'artists#index'
  # match 'search/:id', to: 'songs#search', via: :get
  match 'search', to: 'songs#search', via: :delete, as: :logout
  
  resources :reviews, only: [:index, :show]
  resources :songs
  
  resources :artists do
    member do
      # get 'rating', as: :cheese
      get 'rating'
    end
    
    collection do
      get 'sort/:field' => 'artists#sort'
    end
  end
  
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
