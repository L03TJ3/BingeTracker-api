class SeasonsController < ApplicationController
  def index
    @serie = BingeSerie.find(params[:binge_series_id])
    @episodes = BingeEpisode.search(params[:binge_series_id])
    @count = @episodes.distinct.count(:season)
    
  end
end
