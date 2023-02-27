class DirectorsController < ApplicationController

  def index

    @list_of_directors = Director.all

    render({ :template => "directors_template/index.html.erb" })
  end

def profile

@dir_profile = params.("profile")
@dir_info = Director.where({ :id => @dir_profile.to_sym }).at(0)
@dir_first_name = @dir_info.first_name


render({ :template => "directors_template/dir_profile.html.erb" })

end




end
