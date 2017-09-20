Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			resources :users
			post '/login' to: 'auth#create'
			get '/me', to: 'users#me'
		end
	end
end
