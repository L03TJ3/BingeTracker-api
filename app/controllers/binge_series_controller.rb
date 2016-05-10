class BingeSeriesController < ApplicationController

  def index
    @series = BingeSerie.all

    respond_to do |f|
      f.html
      f.json {render json: { binge_series: @series } }
    end
  end
end
