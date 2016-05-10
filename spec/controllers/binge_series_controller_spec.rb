require 'rails_helper'

describe BingeSeriesController do
  describe "GET index" do
    it "returns json format Series" do
      get :index, format: :json
      expect(response).to match_response_schema("binge_series")
    end
  end
end
