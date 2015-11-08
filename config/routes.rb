Rails.application.routes.draw do
  devise_for :users

  resources :entries do
	  resources :comments
	end


  # resources :users do
  #   resource :entry
  # end
  root 'entries#index'



# ===============
# My Rake Routes
# ===============
#         new_user_session GET    /users/sign_in(.:format)                       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                      devise/sessions#destroy
#            user_password POST   /users/password(.:format)                      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                 devise/passwords#edit
#                          PATCH  /users/password(.:format)                      devise/passwords#update
#                          PUT    /users/password(.:format)                      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                        devise/registrations#cancel
#        user_registration POST   /users(.:format)                               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                          devise/registrations#edit
#                          PATCH  /users(.:format)                               devise/registrations#update
#                          PUT    /users(.:format)                               devise/registrations#update
#                          DELETE /users(.:format)                               devise/registrations#destroy
#           entry_comments GET    /entries/:entry_id/comments(.:format)          comments#index
#                          POST   /entries/:entry_id/comments(.:format)          comments#create
#        new_entry_comment GET    /entries/:entry_id/comments/new(.:format)      comments#new
#       edit_entry_comment GET    /entries/:entry_id/comments/:id/edit(.:format) comments#edit
#            entry_comment GET    /entries/:entry_id/comments/:id(.:format)      comments#show
#                          PATCH  /entries/:entry_id/comments/:id(.:format)      comments#update
#                          PUT    /entries/:entry_id/comments/:id(.:format)      comments#update
#                          DELETE /entries/:entry_id/comments/:id(.:format)      comments#destroy
#                  entries GET    /entries(.:format)                             entries#index
#                          POST   /entries(.:format)                             entries#create
#                new_entry GET    /entries/new(.:format)                         entries#new
#               edit_entry GET    /entries/:id/edit(.:format)                    entries#edit
#                    entry GET    /entries/:id(.:format)                         entries#show
#                          PATCH  /entries/:id(.:format)                         entries#update
#                          PUT    /entries/:id(.:format)                         entries#update
#                          DELETE /entries/:id(.:format)                         entries#destroy
#                     root GET    /                                              entries#index
end