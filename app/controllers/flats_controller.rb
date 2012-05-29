class FlatsController < ApplicationController

  def index
    @flats = Flat.paginate(:page => params[:page])
  end
end
