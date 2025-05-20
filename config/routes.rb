Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/", { :controller => "places", :action => "index" })
  get("/places/new", { :controller => "places", :action => "new" })
  post("/places/new", { :controller => "places", :action => "create" })
  get("/places/:id", { :controller => "places", :action => "show" })
  get("/entries/new", { :controller => "entries", :action => "new" })
  post("/entries/new", { :controller => "entries", :action => "create" })
end
