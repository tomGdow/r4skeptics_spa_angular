Rails.application.routes.draw do

  devise_for :users
	root 'home#index'


	resources :bibliographies
	resources :line_items
	resources :carts
	resources :commodities

	get 'home/index'
	get "home/partial1"
	get "home/partial2"
	get "home/partial3"
	get "home/partial4"
	get "home/partial5"
	get "home/partial8"
	get "home/partial9"
	get "home/partial12"
	get "home/partial13"
	get "home/partial14"
	get "home/partial15"
	get "home/footer"
	get "home/timezones"
	get "home/gmtTime"
	get "home/mainnav"
	get "home/timenav"
	get "home/curieFlexslider"
	get "home/charts"
	get "home/celciusNav"
	get "home/dublinslider"
	get "home/banksImage"
	get "home/peleImage"
	get "home/schillachiImage"
	get "home/animatedgifs"
	get "home/blackcat"
	get "home/timer"
	get "home/templatepickll"
	get "home/templatespiders"

	get "home/partialx"
	get "home/partialy"

	get  '/your_cart' => "carts#your_cart", :as => "your_cart"
	get  '/carts/remove/:id' => 'line_items#destroy'

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
