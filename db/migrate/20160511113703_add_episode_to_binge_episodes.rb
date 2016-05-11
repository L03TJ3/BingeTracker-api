class AddEpisodeToBingeEpisodes < ActiveRecord::Migration
  def change
    add_column :binge_episodes, :episode, :integer
  end
end
