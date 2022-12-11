class CreateSpotCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :spot_categories do |t|
      t.string :name
      t.string :url_name
      t.timestamps
    end
  end
end
