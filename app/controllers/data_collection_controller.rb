class DataCollectionController < ApplicationController
  def index
    if params[:search]
      @data_collection = Quote.where("content LIKE ?", "%#{params[:search]}%").page(params[:page]).per(3)
    else
      @data_collection = Quote.page(params[:page]).per(2)
    end
  end
end
