class DirectorsController < ApplicationController
require "date"

  def index

    @list_of_directors = Director.all

    render({ :template => "directors_template/index.html.erb" })
  end

def profile


@dir_profile = params.fetch("profile")
@dir_movies = Movie.where({ :director_id => @dir_profile})
@dir_info = Director.where({ :id => @dir_profile}).at(0)



render({ :template => "directors_template/dir_profile.html.erb" })

end

def wisest

@dir_hash =  Director.where.not({ :dob => nil}).order({ :dob => :asc })

@old_dir_info = @dir_hash.at(0)
  
  render({ :template => "directors_template/eldest.html.erb" })

end

def youngest

  @dir_hash =  Director.where.not({ :dob => nil}).order({ :dob => :desc })
  
  @young_dir_info = @dir_hash.at(0)
   
   render({ :template => "directors_template/youngest.html.erb" })
  
  end




end
