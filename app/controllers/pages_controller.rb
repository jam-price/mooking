class PagesController < ApplicationController
  def home
    @cows = Cow.all

    @markers = @cows.geocoded.map do |cow|
      {
        lat: cow.latitude,
        lng: cow.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cow: cow })
      }
    end
  end
end
