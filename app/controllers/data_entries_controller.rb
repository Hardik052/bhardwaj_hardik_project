class DataEntriesController < ApplicationController
  def show
    @data_entry = Quote.includes(:author, :genre).find(params[:id])
  end
end
