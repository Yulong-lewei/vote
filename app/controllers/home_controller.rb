class HomeController < ApplicationController
  def index
  	@votes =Vote.all
	end

end
