class Add < ActiveRecord::Migration[7.0]
  def change
    add_column :spot_overviews, :spot_category, :integer
  end
end
