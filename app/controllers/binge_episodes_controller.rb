class BingeEpisodesController < ApplicationController
  before_action :set_binge_serie

  def index
    @episodes = @binge_series.binge_episodes.
      where(season: params[:season])

      respond_to do |f|
        f.html
        f.json {render json: {binge_serie: @binge_series, binge_episodes: @episodes } }
      end
  end

  def show
    @episode = @binge_series.binge_episodes.
      where(season: params[:season]).
      find(params[:id])
  end

  protected

  def set_binge_serie
    @binge_series = BingeSerie.find(params[:binge_series_id])
  end

end
