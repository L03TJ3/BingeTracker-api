require 'rails_helper'

describe BingeEpisodesController do
  let(:binge_series) { create(:binge_serie) }
  let(:binge_episodes) { create(:binge_episode)}

  describe "GET index" do
    it "returns list of seasons for series" do
      get :index, binge_series_id: binge_serie.to_param
      expect( page.find(:css, 'div.season-count').text ).to eq "1"
    end
  end
end
