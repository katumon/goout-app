class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.text :info
      t.string :access
      t.string :regular_holiday
      t.string :address
      t.string :public_link
      t.string :img_url
      t.integer :user_id
      t.string :weekday_open_time
      t.string :weekday_close_time
      t.string :weekend_open_time
      t.string :weekend_close_time
      t.integer :fee
      t.timestamps
    end
  end
end
