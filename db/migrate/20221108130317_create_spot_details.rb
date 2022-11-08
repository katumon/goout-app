class CreateSpotDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :spot_details do |t|
      t.integer :number
      t.string :regular_holiday
      t.string :address
      t.string :public_link
      t.string :weekday_open_time
      t.string :weekday_close_time
      t.string :weekend_open_time
      t.string :weekend_close_time
      t.integer :fee

      t.timestamps
    end
  end
end
