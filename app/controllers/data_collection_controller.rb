class DataCollectionController < ApplicationController
  def index
    @data_collection = Quote.all.page(params[:page])
  end
end
