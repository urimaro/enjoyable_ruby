File.write("19.exercise/temp.txt", "こんにちは", encoding: "Shift_JIS")

greeting = File.read("19.exercise/temp.txt", encoding: "Shift_JIS:UTF-8")
puts greeting
