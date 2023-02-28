class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    @list_of_directors = Director.all

    render({ :template => "movies_template/index.html.erb" })
  end


  def profile


  @movie_id = params.fetch("profile")
  @movie_info = Movie.where({ :id => @movie_id}).at(0)
  



  render({ :template => "movies_template/movie_profile.html.erb" })
  
  end


end
