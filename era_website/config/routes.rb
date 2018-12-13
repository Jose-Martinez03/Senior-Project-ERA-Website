Rails.application.routes.draw do

	get	'/login', to: 'session#new'
	post	'/login', to: 'sessions#create'
	delete	'/logout', to: 'sessions#destroy'
        get 'sessions/new'

	
	get 'welcome/index'

	
resources :govtusers	
	resources :organizations
	resources :civilusers

	resources :disasterevents
	resources :disasterevents do

		resources :resourceitems

	end
	root 'welcome#index'

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
