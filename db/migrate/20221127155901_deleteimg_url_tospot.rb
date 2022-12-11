class DeleteimgUrlTospot < ActiveRecord::Migration[7.0]
  def change
    remove_column :spots, :img_url, :string
  end
end
