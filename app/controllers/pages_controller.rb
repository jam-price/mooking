class PagesController < ApplicationController
  def home
    @cows = Cow.all

    @markers = @cows.geocoded.map do |cow|
      {
        lat: cow.latitude,
        lng: cow.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cow: cow }),
        image_url: helpers.asset_url('cowface_icon.svg')
      }
    end
  end
end
