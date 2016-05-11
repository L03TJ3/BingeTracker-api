require 'rails_helper'

describe BingeEpisodesController do
  let(:binge_episode) { create(:binge_episode, season: "1") }

  describe "GET show" do
    it "assigns single episode to instance variable @episode" do
      get :show, binge_series_id: binge_episode.binge_serie.to_param, season: "1", id: binge_episode.to_param
      expect(assigns(:episode)).to eq binge_episode
    end
  end
end
