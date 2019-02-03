class VenueController < ApplicationController
  protect_from_forgery except: :index

  def index
    @rows = Ordway.rows
    @columns = Ordway.columns
    @available_seats = Ordway.available_seats
  end

end
