class Change1 < ActiveRecord::Migration[7.0]
  def change
    change_column :spots, :fee, :string
  end
end
