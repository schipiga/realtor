class FlatsController < ApplicationController

  def index
    @search = Flat.search do
      fulltext params[:search]
    end
    @flats = @search.results
  end

  def show
    @flat = Flat.find(params[:id])
  end
end
