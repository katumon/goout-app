class AddspotcategoryidTospot < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :spot_category_id, :integer
  end
end
