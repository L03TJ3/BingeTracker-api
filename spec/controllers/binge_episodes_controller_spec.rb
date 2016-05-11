require 'rails_helper'

describe BingeEpisodesController do
  let(:binge_episode) { create(:binge_episode, season: "1") }

  

  describe "GET show" do
    it "assigns single episode to instance variable @episode" do
      get :show, binge_series_id: binge_episode.binge_serie.to_param, season: "1", id: binge_episode.to_param
      expect(assigns(:episode)).to eq binge_episode
    end

    it "returns episodes in json format" do
      get :show, binge_series_id: binge_episode.binge_serie.to_param, season: "1", id: binge_episode.to_param, format: :json

      ## No strict: true here. schema doesn't validate with nested hashes/arrays
      expect(response).to match_response_schema("binge_episode")
    end
  end
end
