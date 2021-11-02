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

  def self.find_by_fname(array,name)
    array.each  { |o| puts o.to_s  if o.name == name }
    nil
  end
  def self.find_by_price(array,name,price)
    array.each { |o| puts o.to_s  if o.name == name && o.price < price }
    nil
  end
  def self.find_by_shelf_life(array,shelf_life)
    array.each { |o| puts o.to_s  if o.shelf_life > shelf_life }
    nil
  end
end

product1 = Product.new(0001, "Dairy", 1111, "ValVal", 34.4, 145, 145)
product2 = Product.new(0002, "Dairy", 1111, "ValVal", 23.4, 120, 105)
product3 = Product.new(0003, "Bakery", 1101, "UKRST", 33.3, 87, 45)
product4 = Product.new(0004, "Sweets", 1121, "AVK", 22.2, 211, 88)
product5 = Product.new(0005, "Sweets", 1131, "IRISCo", 68.7, 754, 86)
product6 = Product.new(0006, "Sweets", 1221, "SAharoK", 99.9, 211, 11)

array = [product1,product2,product3,product4,product5,product6]

p "for a given name: "
 Product.find_by_fname(array,'Dairy').to_s
p "for a given name with a price less than the given one"
 Product.find_by_price(array,'Dairy', 50).to_s
p "with a shelf life longer than given one"
Product.find_by_shelf_life(array,300).to_s



