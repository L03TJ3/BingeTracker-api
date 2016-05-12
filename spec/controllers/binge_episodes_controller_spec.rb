require 'rails_helper'

describe BingeEpisodesController do
  let(:binge_episode) { create(:binge_episode, season: "1") }
  let(:binge_episode1) { create(:binge_episode, season: "1", binge_serie_id: "3") }

  let!(:binge_serie) { create(:binge_serie) }

  describe "GET index" do
    it "assigns episodes to @episodes" do
      get :index, binge_series_id: binge_episode.binge_serie.to_param, season: "1"
      expect(assigns(:episodes)).to eq [binge_episode]
    end

    it "only show episodes with same binge_serie_id as binge_serie" do
      get :index, binge_series_id: binge_serie.to_param , season: "1"
      expect(binge_episode1.binge_serie_id).to eq binge_serie.id
    end

    it "doesnt show episodes from other series" do
      get :index, binge_series_id: binge_serie.to_param , season: "1"
      expect(binge_episode.binge_serie_id).not_to eq binge_serie.id
    end

    it "returns episodes in json format" do
      get :index, binge_series_id: binge_episode.binge_serie.to_param, season: "1", format: :json
      ## No strict: true here. schema doesn't validate with nested hashes/arrays
      expect(response).to match_response_schema("binge_episode", strict: true)
    end
  end

  describe "GET show" do
    it "assigns single episode to instance variable @episode" do
      get :show, binge_series_id: binge_episode.binge_serie.to_param, season: "1", id: binge_episode.to_param
      expect(assigns(:episode)).to eq binge_episode
    end

    it "returns episode in json format" do
      get :show, binge_series_id: binge_episode.binge_serie.to_param, season: "1", id: binge_episode.to_param, format: :json

      ## No strict: true here. schema doesn't validate with nested hashes/arrays
      expect(response).to match_response_schema("binge_episode")
    end
  end
end
