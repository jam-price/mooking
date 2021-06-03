class PagesController < ApplicationController
  def home
    @cows = Cow.all

    @markers = @cows.geocoded.map do |cow|
      {
        lat: cow.latitude,
        lng: cow.longitude
      }
    end
  end
end
