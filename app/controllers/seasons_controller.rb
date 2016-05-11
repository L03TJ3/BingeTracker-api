class SeasonsController < ApplicationController
  def index
    @serie = BingeSerie.find(params[:binge_series_id])
    count_season(:binge_series_id)
  end

  def show
    @serie = BingeSerie.find(params[:binge_series_id])
    @episodes = BingeEpisode.where(binge_serie_id: params[:binge_series_id],
                                   season: params[:id])
    @season_number = params[:id]

    respond_to do |f|
      f.html
      f.json {render json: { binge_series: @episodes } }
    end
  end




  private

    def count_season(id)
      @episodes = BingeEpisode.search(params[id])
      @count = @episodes.distinct.count(:season)
    end
end
