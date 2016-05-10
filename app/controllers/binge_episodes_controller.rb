class BingeEpisodesController < ApplicationController

  def index
    @series = BingeSerie.find(params[:bing_serie_id])
  end
end
