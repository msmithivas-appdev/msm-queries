Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/actors", { :controller => "actors", :action => "index" })

 # get("/directors/youngest", { :controller => "", :action => "index" })

 get("/directors/eldest", { :controller => "", :action => "index" })

 get("/directors/:profile", { :controller => "directors", :action => "profile" })
  
end
