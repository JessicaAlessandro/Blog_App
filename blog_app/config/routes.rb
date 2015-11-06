Rails.application.routes.draw do
  # devise_for :users
  # resources :entries

	resources :users do
	  resource :entry
	end
	
  # root 'entries#index'
  	root 'users#index'
	# devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

# ===============
# My Rake Routes
# ===============
#                         Prefix Verb   URI Pattern                          Controller#Action
#         entries GET    /entries(.:format)                   entries#index
#                 POST   /entries(.:format)                   entries#create
#       new_entry GET    /entries/new(.:format)               entries#new
#      edit_entry GET    /entries/:id/edit(.:format)          entries#edit
#           entry GET    /entries/:id(.:format)               entries#show
#                 PATCH  /entries/:id(.:format)               entries#update
#                 PUT    /entries/:id(.:format)               entries#update
#                 DELETE /entries/:id(.:format)               entries#destroy
#      user_entry POST   /users/:user_id/entry(.:format)      entries#create
#  new_user_entry GET    /users/:user_id/entry/new(.:format)  entries#new
# edit_user_entry GET    /users/:user_id/entry/edit(.:format) entries#edit
#                 GET    /users/:user_id/entry(.:format)      entries#show
#                 PATCH  /users/:user_id/entry(.:format)      entries#update
#                 PUT    /users/:user_id/entry(.:format)      entries#update
#                 DELETE /users/:user_id/entry(.:format)      entries#destroy
#           users GET    /users(.:format)                     users#index
#                 POST   /users(.:format)                     users#create
#        new_user GET    /users/new(.:format)                 users#new
#       edit_user GET    /users/:id/edit(.:format)            users#edit
#            user GET    /users/:id(.:format)                 users#show
#                 PATCH  /users/:id(.:format)                 users#update
#                 PUT    /users/:id(.:format)                 users#update
#                 DELETE /users/:id(.:format)                 users#destroy

end