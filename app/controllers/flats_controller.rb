class FlatsController < ApplicationController

  def index
    @flats = Flat.paginate(:page => params[:page])
  end

  def show
    @flat = Flat.find(params[:id])
  end
end
