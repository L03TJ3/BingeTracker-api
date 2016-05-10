class CreateBingeSeries < ActiveRecord::Migration
  def change
    create_table :binge_series do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
