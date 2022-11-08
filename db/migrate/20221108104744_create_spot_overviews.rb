class CreateSpotOverviews < ActiveRecord::Migration[7.0]
  def change
    create_table :spot_overviews do |t|
      t.string :name
      t.text :info
      t.string :access
      t.integer :number
      
      t.timestamps
    end
  end
end
