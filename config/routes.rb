Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/actors", { :controller => "actors", :action => "index" })


  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/youngest", { :controller => "directors", :action => "youngest" })

  get("/directors/:profile", { :controller => "directors", :action => "profile" })

  get("/movies/:profile", { :controller => "movies", :action => "profile" })

  get("/actors/:profile", { :controller => "actors", :action => "profile" })
  
end
