# 指定したURLからRubyのソースコード(ruby-2.6.5.zip)を読み込み、ローカルのファイルに書き込む
require "open-uri"

filename = "ruby-2.6.5.zip"
version = filename.scan(/\d+\.\d+/).first

url = "https://cache.ruby-lang.org/pub/ruby/#{version}/#{filename}"

open(url) do |remote|
  File.open(filename, "wb") do |local|
    while data = remote.read(10000)
      local.write(data)
    end
  end
end
