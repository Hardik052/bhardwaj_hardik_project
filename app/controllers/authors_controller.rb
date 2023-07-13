class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def works
    @author = Author.find(params[:id])
    @quotes = author.quotes
  end
end
