Rails.application.routes.draw do

	root 'home#index'

	resources :bibliographies
	resources :line_items
	resources :carts
	resources :commodities

    devise_for :users, controllers: { sessions: 'users/sessions',  :registrations  => "users/registrations", :passwords => "users/passwords"}
    devise_for :admins, controllers: { sessions: 'admins/sessions',  :registrations  => "admins/registrations", :passwords => "admins/passwords"}

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
	get "home/countdowntimer"
	get "home/templatepickll"
	get "home/templatespiders"

	#get "home/partialx"
	#get "home/partialy"

	get  '/your_cart' => "carts#your_cart", :as => "your_cart"
	get  '/carts/remove/:id' => 'line_items#destroy'

end
