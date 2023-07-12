class DataCollectionController < ApplicationController
  def index
    @data_collection = Quote.all
  end
end
