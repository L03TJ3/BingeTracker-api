require 'rails_helper'

describe BingeSerie do
  it { should validate_presence_of   :title}
  it { should validate_presence_of   :description}
  it { should validate_presence_of   :image}
  it { should have_many :binge_episodes}

  describe "seasons" do
    let(:series) { create(:binge_serie) }
    let(:series1) { create(:binge_serie) }
    let(:series2) { create(:binge_serie) }

    let(:season) { 1 }
    let(:season2) { 2 }
    let(:season3) { 3 }
    let(:season4) { 4 }

    let!(:episode) { create(:binge_episode, season: season, binge_serie: series1)}
    let!(:episode2) { create_list(:binge_episode, 3, season: season2, binge_serie: series2)}
    let!(:episode3) { create(:binge_episode, season: season3, binge_serie: series2)}

    it "expects an empty []" do
      expect(series.seasons).to eq []
    end

    it "expects one season" do
      expect(series1.seasons).to eq [episode.season]
    end

    it "expects multiple seasons though unique" do
      expect(series2.seasons).to eq [ season2, season3 ]
    end

    it "does not contain episodes from other series" do
      create_list(:binge_episode, 3, season: season4)
      expect(series2.seasons).to eq [ season2, season3 ]
      expect(series2.seasons).not_to include(4)
    end

  end

end
