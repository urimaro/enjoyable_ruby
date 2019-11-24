list = ["a", "b", "c", "d"]
list.each_with_index do |elem, i|
  puts "#{i+1}番目の要素は#{elem}です。"
end
