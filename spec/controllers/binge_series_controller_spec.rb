require 'rails_helper'

describe BingeSeriesController do
  describe "GET index" do
    let!(:series) { create_list(:binge_serie, 3) }

    it "returns json format Series" do
      get :index, format: :json
      expect(response).to match_response_schema("binge_series")
    end

    it "should assign all series to @series" do
      get :index
      expect(assigns(:series)).to eq series
    end
  end
end
