require "sqlite3"

SQLite3::Database.open("23.3/address.db") do |db|
  db.execute(<<-SQL)
    CREATE TABLE addresses
      (name TEXT, address TEXT)
  SQL
end
