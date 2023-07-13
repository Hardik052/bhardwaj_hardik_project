class WorksController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @works = @author.works
  end

end
