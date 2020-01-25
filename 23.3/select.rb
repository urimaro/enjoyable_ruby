require "sqlite3"

SQLite3::Database.open("23.3/address.db") do |db|
  db.execute(<<-SQL) {|rows| p rows}
    SELECT name, address FROM addresses
  SQL
end
