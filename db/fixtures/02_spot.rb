require 'csv'


CSV.foreach('db/fixtures/development/Spot.csv', headers: true) do |row|
    Spot.seed_once do |s|
        s.name = row["name"]
        s.spot_category_id = row["spot_category_id"]
        s.id = row["id"]
        s.info = row["info"]
        s.access = row["access"]
        s.regular_holiday = row["regular_holoday"]
        s.address = row["address"]
        s.public_link = row["public_link"]
        s.user_id = row["user_id"]
        s.weekday_open_time = row["weekend_open_time"]
        s.weekday_close_time = row["weekday_close_time"]
        s.weekend_open_time = row["weekend_open_time"]
        s.weekend_close_time = row["weekend_open_time"]
        s.fee = row["fee"]
    end
end