class ActorsController < ApplicationController

    $list_of_actors = Actor.all
    $list_of_characters = Character.all
    $list_of_movies = Movie.all
    $list_of_directors = Director.all
    

  def profile

  @actor_id = params.fetch("profile")
  
  
  @actor_hash = $list_of_actors.where({ :id => @actor_id}).at(0)
  @actor_name = @actor_hash.fetch("name")
  @actor_dob = @actor_hash.fetch("dob")
  @actor_bio = @actor_hash.fetch("bio")
  @actor_image = @actor_hash.fetch("image")  


  render({ :template => "actors_template/actor_profile.html.erb" })

  end



  def index
    
    render({ :template => "actors_template/index.html.erb" })

  end


end
