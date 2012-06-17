class FlatsController < ApplicationController

  before_filter :authenticate_user!,
                :only => [:new, :create]

  def index
    @flats = Flat.paginate(:page => params[:page])
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = current_user.flats.new
  end

  def create
    @flat = current_user.flats.new(params[:flat])
    @flat.save
  end
end
