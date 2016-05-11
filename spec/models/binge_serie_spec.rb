require 'rails_helper'

describe BingeSerie do
  it { should validate_presence_of   :title}
  it { should validate_presence_of   :description}
  it { should validate_presence_of   :image}
  it { should have_many :binge_episodes}

  describe "seasons" do
    let(:series) { create(:binge_serie) }
    let(:series1) { create(:binge_serie) }

    let(:season) { 1 }
    let!(:episode) { create(:binge_episode, season: season, binge_serie: series1)}

    it "expects an empty []" do
      expect(series.seasons).to eq []
    end

    it "expects a single episode" do
      expect(series1.seasons).to eq [episode.season]
    end
  end

end
