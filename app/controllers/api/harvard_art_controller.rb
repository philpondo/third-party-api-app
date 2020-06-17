class Api::HarvardArtController < ApplicationController
  def index
    @harvard_art = HTTP.get("https://api.harvardartmuseums.org/person?apikey=#{Rails.application.credentials.harvard_art_api[:apikey]}")
    render json: @harvard_art.parse
  end
end
