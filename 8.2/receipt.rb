class Receipt
  VERSION = "1.0.0"

  def self.create_receipt_xyz
    self.new("ストアXYZ")
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @lines = []
  end

  def lines=(lines)
    @lines = lines
  end

  def calc
    total = 0
    @lines.each do |line|
      total += line[:price] * line[:num]
    end
    total
  end

  def output
    puts "レシート #{name}"
    @lines.each do |line|
      puts "#{line[:name]} #{line[:price]}円 x #{line[:num]}"
    end
    puts "合計金額: #{calc}円"
  end

  def replace_name
    name = "new name"
    self.name = name
  end
end

r = Receipt.new("ストアA")
r.lines = [{name: "卵", price: 200, num: 1},
           {name: "大根", price: 100, num: 2}]
r.output
