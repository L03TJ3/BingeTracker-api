require 'rails_helper'

describe SeasonsController do
  let(:binge_series) { create(:binge_serie) }
  let(:binge_episodes) { create(:binge_episode)}

  describe "GET index" do
    it "counts the seasons by unique season numbers" do
      get :index, binge_series_id: binge_series.to_param
    end
  end

  describe "GET show" do
  end
end
