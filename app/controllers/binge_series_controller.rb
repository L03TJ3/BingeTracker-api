class BingeSeriesController < ApplicationController
  before_action :set_binge_serie, only: [:show]

  def index
    @series = BingeSerie.all

    respond_to do |f|
      f.html
      f.json {render json: { binge_series: @series } }
    end
  end

  def show
    @serie = BingeSerie.find(params[:id])

    respond_to do |f|
      f.html
      f.json {render json: { binge_series: @serie } }
    end
  end

  protected

    def set_binge_serie
      @binge_series = BingeSerie.find(params[:id])
    end
end
