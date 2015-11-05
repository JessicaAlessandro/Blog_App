Rails.application.routes.draw do
  resources :entries

  root 'entries#index'



# ===============
# My Rake Routes
# ===============
#     Prefix Verb   URI Pattern                 Controller#Action
#    entries GET    /entries(.:format)          entries#index
#            POST   /entries(.:format)          entries#create
#  new_entry GET    /entries/new(.:format)      entries#new
# edit_entry GET    /entries/:id/edit(.:format) entries#edit
#      entry GET    /entries/:id(.:format)      entries#show
#            PATCH  /entries/:id(.:format)      entries#update
#            PUT    /entries/:id(.:format)      entries#update
#            DELETE /entries/:id(.:format)      entries#destroy



end
