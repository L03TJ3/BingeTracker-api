require 'rails_helper'

describe SeasonsController do
  let(:binge_series) { create(:binge_serie) }
  let(:binge_episodes) { create(:binge_episode)}

  describe "GET index" do
    it "returns list of seasons for serie" do
      get :index, binge_series_id: binge_series.to_param
    end
  end

  describe "GET show" do
    it "returns list of episodes for season x" do

    end
  end
end
