class CreateBingeEpisodes < ActiveRecord::Migration
  def change
    create_table :binge_episodes do |t|
      t.string :name
      t.text :description
      t.integer :seasons
      t.references :binge_series, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
