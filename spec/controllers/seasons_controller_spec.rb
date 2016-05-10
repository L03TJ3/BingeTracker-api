require 'rails_helper'

describe SeasonsController do
  let(:binge_series) { create(:binge_serie) }
  let(:binge_episodes) { create(:binge_episode)}

  describe "GET index" do
    it "returns list of seasons for series" do
      get :index, binge_serie_id: binge_series.to_param
      expect( page.find(:css, 'div.season').text ).to eq "1"
    end
  end
end
