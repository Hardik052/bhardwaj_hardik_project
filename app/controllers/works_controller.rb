class WorksController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @works = Work.where(author_id: params[:author_id])
  end


end
