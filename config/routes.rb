Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			resources :palate_scores
			resources :nose_scores
			resources :sight_scores
			resources :users
			resources :wines
			resources :wine_scores
			post '/login', to: 'auth#create'
			get '/me', to: 'auth#me'
			get '/wine', to: 'users#wine'
			post '/scores', to: 'wine_scores#scores'
			post '/winescores/edit', to: 'wine_scores#update'
			post '/wines/edit', to: 'wines#update'
		end
	end
end
