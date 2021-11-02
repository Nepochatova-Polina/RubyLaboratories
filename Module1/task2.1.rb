class Product
  attr_accessor :id, :name, :upc, :producer, :price, :shelf_life, :num

  def initialize(id, name, upc, producer, price, shelf_life, num)
    @id = id
    @name = name
    @upc = upc
    @producer = producer
    @price = price
    @shelf_life = shelf_life
    @num = num
  end
  def to_s
    @id.to_s + ', ' + @name + ', ' + @upc.to_s + ', ' + @producer + ', ' + @price.to_s + ', ' + @shelf_life.to_s + ', ' + @num.to_s
  end

  def self.find_by_fname(name)
    ObjectSpace.each_object(Product) { |o| return o if o.name == name }
    nil
  end
  def self.find_by_price(name,price)
    ObjectSpace.each_object(Product) { |o| return o if o.name == name && o.price == price }
    nil
  end
  def self.find_by_shelf_life(shelf_life)
    ObjectSpace.each_object(Product) { |o| return o if o.shelf_life > shelf_life }
    nil
  end
end

Product.new(0001, "Dairy", 1111, "ValVal", 34.4, 145, 145)
Product.new(0002, "Dairy", 1111, "ValVal", 23.4, 120, 105)
Product.new(0003, "Bakery", 1101, "UKRST", 33.3, 87, 45)
Product.new(0004, "Sweets", 1121, "AVK", 22.2, 211, 88)
Product.new(0005, "Sweets", 1131, "IRISCo", 68.7, 754, 86)
Product.new(0006, "Sweets", 1221, "SAharoK", 99.9, 211, 11)

puts Product.find_by_fname('Bakery').to_s
puts Product.find_by_price('Dairy', 34.4).to_s
puts Product.find_by_shelf_life(211).to_s


