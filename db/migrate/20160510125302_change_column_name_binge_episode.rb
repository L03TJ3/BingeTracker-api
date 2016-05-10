class ChangeColumnNameBingeEpisode < ActiveRecord::Migration
  def change
    rename_column :binge_episodes, :binge_series_id, :binge_serie_id
  end
end
