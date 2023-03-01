class ActorsController < ApplicationController

    $list_of_actors = Actor.all
    @list_of_characters = Character.all
    @list_of_movies = Movie.all
    

  def profile

  @actor_id = params.fetch("profile")
  @character_hash = Character.where({ :id => @actor_id})
  
  # @dir_id = @list_of_directors.where({ :id => @movie_id}).at(0)
  # @dir_name = @dir_id.fetch("name")

  end



  def index
    
    render({ :template => "actors_template/index.html.erb" })

  end


end
