class ShowController < ApplicationController
  def index
		@votes = Vote.all
  end

end
