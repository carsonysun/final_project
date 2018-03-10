Rails.application.routes.draw do
  root :to => "categories#index"
  # Routes for the Habit resource:
  # CREATE
  get "/habits/new", :controller => "habits", :action => "new"
  post "/create_habit", :controller => "habits", :action => "create"

  # READ
  get "/habits", :controller => "habits", :action => "index"
  get "/habits/:id", :controller => "habits", :action => "show"

  # UPDATE
  get "/habits/:id/edit", :controller => "habits", :action => "edit"
  post "/update_habit/:id", :controller => "habits", :action => "update"

  # DELETE
  get "/delete_habit/:id", :controller => "habits", :action => "destroy"
  #------------------------------

  # Routes for the Log resource:
  # CREATE
  get "/logs/new", :controller => "logs", :action => "new"
  post "/create_log", :controller => "logs", :action => "create"

  # READ
  get "/logs", :controller => "logs", :action => "index"
  get "/logs/:id", :controller => "logs", :action => "show"

  # UPDATE
  get "/logs/:id/edit", :controller => "logs", :action => "edit"
  post "/update_log/:id", :controller => "logs", :action => "update"

  # DELETE
  get "/delete_log/:id", :controller => "logs", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
