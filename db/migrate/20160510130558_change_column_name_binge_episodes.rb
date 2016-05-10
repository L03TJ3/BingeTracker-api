class ChangeColumnNameBingeEpisodes < ActiveRecord::Migration
  def change
    rename_column :binge_episodes, :seasons, :season
  end
end
