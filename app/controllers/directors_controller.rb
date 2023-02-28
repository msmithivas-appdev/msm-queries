class DirectorsController < ApplicationController
require "date"

  def index

    @list_of_directors = Director.all

    render({ :template => "directors_template/index.html.erb" })
  end

def profile

@dir_profile = params.fetch("profile")
@dir_info = Director.where({ :id => @dir_profile.to_sym }).at(0)
# @dir_first_name = @dir_info


render({ :template => "directors_template/dir_profile.html.erb" })

end

def wisest

@dir_hash =  Director.where.not({ :dob => nil}).order({ :dob => :asc })

@old_dir_info = @dir_hash.at(0)

# @old_dir_first_name = @old_dir_info.first
  
  render({ :template => "directors_template/eldest.html.erb" })


end




end
