Rails.application.routes.draw do
  devise_for :users
  resources :entries

	# resources :users do
	#   resource :entry
	# end
  root 'entries#index'


  # get '/users/:user_id/entry' => 'entries#show', :as => 'user_entry_path'


# ===============
# My Rake Routes
# ===============

end
