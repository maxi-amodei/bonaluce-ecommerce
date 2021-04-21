# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seeds...."

PROD = ["Lámpara de escritorio", "Araña", "Lámpara de pie", "Colgante", "Embutido", "Farola", "Aplique", "Bidireccional"]
COL = ["Negro", "Cromo", "Blanco", "Gris", "Dorado"]
CAT = ["Exterior","Baño","Cocina","Cocina", "Living","Dormitorio","Promociones"]
# Suppliers = ["Brimpex", "Candil", "FW","Tecnosam"]
SUP = Supplier.all

CAT.each do |name|
  category = Category.new(name:name)
  category.save!
end

EXT = Category.find_by_name("Exterior")
BAN = Category.find_by_name("Baño")
COC = Category.find_by_name("Cocina")
LIV = Category.find_by_name("Living")
DOR = Category.find_by_name("Dormitorio")
PRO = Category.find_by_name("Promociones")

#producto 0 (Con 2 variaciones)

COL.each do |color|
  producto = Product.new(name:"#{PROD[0]} #{color}",
                        short_description:"Moderno velador de escritorio con lampara bajo consumo",
                        supplier:SUP.sample,
                        color:color,
                        price: 3000.0,
                        discount_price:0.2,
                        product_diameter:"20",
                        product_length:"0",
                        product_height:"50",
                        product_width:"0")
  producto.categories << DOR
  producto.categories << LIV
  producto.categories << PRO
  producto.save!
end

COL.each do |color|
  producto = Product.new(name:"#{PROD[1]} #{color}",
                        short_description:"Araña de estilo, ideal para Dormitorio o living",
                        supplier:SUP.sample,
                        color:color,
                        price: 30000.0,
                        discount_price:0.2,
                        product_diameter:"40",
                        product_length:"30",
                        product_height:"0",
                        product_width:"0")
  producto.categories << DOR
  producto.categories << LIV
  producto.categories << PRO
  producto.save!
end

COL.each do |color|
  producto = Product.new(name:"#{PROD[2]} #{color}",
                        short_description:"Moderna lampara de pie con lampara bajo consumo calido, ideal dormitorio o living",
                        supplier:SUP.sample,
                        color:color,
                        price: 10000.0,
                        discount_price:0.2,
                        product_diameter:"40",
                        product_length:"0",
                        product_height:"185",
                        product_width:"0")
  producto.categories << DOR
  producto.categories << LIV
  producto.categories << PRO
  producto.save!
end

COL.each do |color|
  producto = Product.new(name:"#{PROD[3]} #{color}",
                        short_description:"Colgante siglo XXI de 3 luces",
                        supplier:SUP.sample,
                        color:color,
                        price: 9000.0,
                        discount_price:0.2,
                        product_diameter:"0",
                        product_length:"100",
                        product_height:"0",
                        product_width:"20")
  producto.categories << COC
  producto.categories << LIV
  producto.save!
end

COL.each do |color|
  producto = Product.new(name:"#{PROD[4]} #{color}",
                        short_description:"Embutido LED",
                        supplier:SUP.sample,
                        color:color,
                        price: 5000.0,
                        discount_price:0.2,
                        product_diameter:"20",
                        product_length:"0",
                        product_height:"0",
                        product_width:"0")
  producto.categories << COC
  producto.categories << BAN
  producto.categories << EXT
  producto.save!
end

COL.each do |color|
  producto = Product.new(name:"#{PROD[5]} #{color}",
                        short_description:"Farola exterior, ideal para Jardin o frente",
                        supplier:SUP.sample,
                        color:color,
                        price: 7000.0,
                        discount_price:0.2,
                        product_diameter:"0",
                        product_length:"40",
                        product_height:"0",
                        product_width:"20")
  producto.categories << PRO
  producto.categories << EXT
  producto.save!
end

COL.each do |color|
  producto = Product.new(name:"#{PROD[6]} #{color}",
                        short_description:"Aplique de pared para baño",
                        supplier:SUP.sample,
                        color:color,
                        price: 15000.0,
                        discount_price:0.2,
                        product_diameter:"0",
                        product_length:"60",
                        product_height:"0",
                        product_width:"10")
  producto.categories << BAN
  producto.save!
end

COL.each do |color|
  producto = Product.new(name:"#{PROD[7]} #{color}",
                        short_description:"Bidireccional ideal para frente o jardin",
                        supplier:SUP.sample,
                        color:color,
                        price: 8000.0,
                        discount_price:0.2,
                        product_diameter:"0",
                        product_length:"20",
                        product_height:"0",
                        product_width:"10")
  producto.categories << EXT
  producto.categories << PRO
  producto.save!
end

puts "Succesfully created"

# #producto 0 (Con 2 variaciones)
# producto = Product.new(name:PROD[0],
#                       short_description:"Moderno velador de escritorio con lampara bajo consumo",
#                       supplier:SUP.sample)
# producto.categories << DOR
# producto.categories << LIV
# producto.categories << PRO
# producto.save!

# variation = ProductVariation.new(product: producto,size:"40x20",color:"Negro", name:"Lampara de escritorio", price:3000.0)
# variation.save!

# variation = ProductVariation.new(product: producto,size:"40x20",color:"Cromo", name:"Lampara de escritorio", price:4500.0)
# variation.save!


# #producto 1 (Con 2 variaciones)
# prod_1 = Product.new(name:PROD[1],
#                       short_description:"Araña de estilo, ideal para Dormitorio o living",
#                       supplier:SUP.sample)
# prod_1.categories << DOR
# prod_1.categories << LIV
# prod_1.categories << PRO
# prod_1.save!

# var_1 = ProductVariation.new(product: prod_1, size:"Diametro:50cm",color:"Negro", name:"Araña", price:30000.0)
# var_1.save!

# var_1 = ProductVariation.new(product: prod_1, size:"Diametro:50cm",color:"Cromo", name:"Araña", price:45000.0)
# var_1.save!
