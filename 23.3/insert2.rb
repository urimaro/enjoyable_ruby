require "sqlite3"

data = {
  name: "山田みのる",
  addr: "東江戸川区東江戸川三丁目"
}
SQLite3::Database.open("23.3/address.db") do |db|
  db.execute(<<-SQL, data)
    INSERT INTO addresses VALUES (:name, :addr)
  SQL
end
