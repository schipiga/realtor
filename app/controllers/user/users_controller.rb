class User::UsersController < ApplicationController

  before_filter :authenticate_user!

  def index
    @search = current_user.flats.search do
      fulltext params[:search]
    end
    @flats = @search.results
  end
end
