# Project2-blog

Goal: Create a blog app that allows users to create, edit, and delete blog posts only when they are logged in.


		LOGGED IN:               
	- view entries 			- view entries
	- create entries   	- rerouted to log in
	- edit entries   		- rerouted to log in
	- delete entries 		- rerouted to log in
	 

		NOT LOGGED IN:     
	- view entries 			- view entries
	- create entries   	- rerouted to log in
	- edit entries    	- rerouted to log in
	- delete entries   	- rerouted to log in
	- 
	

Models:
User
Entry


ORM

user can make many entries (has_many)
entry only has one user (belongs_to)

users
| ID | user_name  | password|

entries
| ID | title | content | date_created | date_modified | user_id (foreign)

ROUTES

# Rake Routes
#===============
#           Prefix Verb   URI Pattern                                Controller#Action
#             root GET    /                                          users#index
#     user_entries GET    /users/:user_id/entries(.:format)          entries#index
#                  POST   /users/:user_id/entries(.:format)          entries#create
#  new_user_entry GET    /users/:user_id/entries/new(.:format)      entries#new
# edit_user_entry GET    /users/:user_id/entries/:id/edit(.:format) entries#edit
#      user_entry GET    /users/:user_id/entries/:id(.:format)      entries#show
#                  PATCH  /users/:user_id/entries/:id(.:format)      entries#update
#                  PUT    /users/:user_id/entries/:id(.:format)      entries#update
#                  DELETE /users/:user_id/entries/:id(.:format)      entries#destroy
#            users GET    /users(.:format)                           users#index
#                  POST   /users(.:format)                           users#create
#         new_user GET    /users/new(.:format)                       users#new
#        edit_user GET    /users/:id/edit(.:format)                  users#edit
#             user GET    /users/:id(.:format)                       users#show
#                  PUT    /users/:id(.:format)                       users#update
#                  DELETE /users/:id(.:format)                       users#destroy

		USER
		index:  list of all users... link to blog
		new:     html form to create new user - user name & password: submit button
		create:  creates new user 
		show:		shows a specific user
		edit:		N/A -- don't want to edit user. 
		update:  	N/A -- don't want to edit user. 
		destroy:   deletes user

		ENTRY
		index: lists all blogs... link to 
		new: html form to create new blog post - title & content: submit button
		create:
		show: show new entry
		edit: brings back html form so it can be edited
		update: shows updated entry 
		destroy: deletes entry 


VIEWS

	USER 		
	index	: list of all users with links to their blog entry index. separate link to view list of blog entries of all users		
	new:	would be login form in this case/create new user form
	show: shows newly created user
	edit	: ** i don't think i want an edit form, if i decide one, i think it will just be a link to delete the user

	ENTRY
	index:shows all the users posts in one place with links to view and edit current posts. as well as link to create a new entry.  separate link to add new post.
	show:  	shows individuals entries with links to edit and edit current posts. as well as link to create a new entry
	new: html form to creat new entry
	edit: html form so it can be edited

PAGES WITH REDIRECTS:

if not logged in, redirect to login page:
	-create new entry
	-edit entry
	-delete entry 

after logging in, redirect to enrty index

after deleting entry redirect to user index
after deleting user redirect to user index
