class BingeSeriesController < ApplicationController

  def index
    @series = BingeSerie.all

    respond_to do |f|
      f.html
      f.json {render json: { binge_series: @series } }
    end
  end

  # def show
  #   @serie = BingeSerie.find(params[:id])
  #   @episodes = BingeEpisode.search(params[:id])
  #   @count = @episodes.distinct.count(:season)
  # end
end
