class VenueController < ApplicationController
  protect_from_forgery except: :index

  def index
    @rows = Ordway::H[:venue][:layout][:rows]
    @columns = Ordway::H[:venue][:layout][:columns]
    @available_seats = Ordway.available_seats
  end

end
