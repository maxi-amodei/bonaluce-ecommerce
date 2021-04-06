# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PROD = ["Lampara de escritorio", "Arañas", "Lampara de pie", "Colgante", "Embutido", "Farola", "Aplique"]

SUP = Supplier.all

EXT = Category.find_by_name("Exterior")
BAN = Category.find_by_name("Baño")
COC = Category.find_by_name("Cocina")
LIV = Category.find_by_name("Living")
DOR = Category.find_by_name("Dormitorio")
PRO = Category.find_by_name("Promociones")

#producto 0 (Con 2 variaciones)
producto = Product.new(name:PROD[0],
                      short_description:"Moderno velador de escritorio con lampara bajo consumo",
                      supplier:SUP.sample)
producto.categories << DOR
producto.categories << LIV
producto.categories << PRO
producto.save!

variation = ProductVariation.new(product: producto,size:"40x20",color:"Negro", name:"Lampara de escritorio", price:3000.0)
variation.save!

variation = ProductVariation.new(product: producto,size:"40x20",color:"Cromo", name:"Lampara de escritorio", price:4500.0)
variation.save!


#producto 1 (Con 2 variaciones)
prod_1 = Product.new(name:PROD[1],
                      short_description:"Araña de estilo, ideal para Dormitorio o living",
                      supplier:SUP.sample)
prod_1.categories << DOR
prod_1.categories << LIV
prod_1.categories << PRO
prod_1.save!

var_1 = ProductVariation.new(product: prod_1, size:"Diametro:50cm",color:"Negro", name:"Araña", price:30000.0)
var_1.save!

var_1 = ProductVariation.new(product: prod_1, size:"Diametro:50cm",color:"Cromo", name:"Araña", price:45000.0)
var_1.save!


#producto 2 (Con 3 variaciones)
prod_2 = Product.new(name:PROD[2],
                      short_description:"Moderna lampara de pie con lampara bajo consumo calido, ideal dormitorio o living",
                      supplier:SUP.sample)
prod_2.categories << DOR
prod_2.categories << LIV
prod_2.categories << PRO
prod_2.save!

var_2 = ProductVariation.new(product: prod_2, size:"185x30",color:"Negro", name:"Lampara de pie", price:10000.0)
var_2.save!

var_2 = ProductVariation.new(product: prod_2, size:"185x30",color:"Cromo", name:"Lampara de pie", price:15000.0)
var_2.save!

var_2 = ProductVariation.new(product: prod_2, size:"185x30",color:"Dorado", name:"Lampara de pie", price:15000.0)
var_2.save!

#producto 3 (Con 1 variaciones)
prod_3 = Product.new(name:PROD[3],
                      short_description:"Colgante siglo XXI",
                      supplier:SUP.sample)
prod_3.categories << COC
prod_3.categories << LIV
prod_3.categories << PRO
prod_3.save!

var_3 = ProductVariation.new(product: prod_3, size:"200x10",color:"Blanco", name:"Colgante", price:10000.0)
var_3.save!

#producto 4 (Con 2 variaciones)
prod_4 = Product.new(name:PROD[4],
                      short_description:"Embutido LED",
                      supplier:SUP.sample)
prod_4.categories << COC
prod_4.categories << LIV
prod_4.categories << BAN
prod_4.save!

var_4 = ProductVariation.new(product: prod_4, size:"20x20",color:"Negro", name:"Embutido", price:5000.0)
var_4.save!
var_4 = ProductVariation.new(product: prod_4, size:"20x20",color:"Blanco", name:"Embutido", price:5000.0)
var_4.save!

#producto 5 (Con 2 variaciones)
prod_5 = Product.new(name:PROD[5],
                      short_description:"Farola exterior, ideal para Jardin o frente",
                      supplier:SUP.sample)
prod_5.categories << EXT
prod_5.categories << PRO

prod_5.save!

var_5 = ProductVariation.new(product: prod_5, size:"40x20",color:"Negro", name:"Farola", price:6000.0)
var_5.save!
var_5 = ProductVariation.new(product: prod_5, size:"40x20",color:"Cromo", name:"Farola", price:8000.0)
var_5.save!

#producto 6 (Con 1 variaciones)
prod_6 = Product.new(name:PROD[6],
                      short_description:"Aplique de pared para baño",
                      supplier:SUP.sample)
prod_6.categories << BAN

prod_6.save!

var_6 = ProductVariation.new(product: prod_6, size:"60x10X15",color:"Blanco", name:"Aplique", price:7000.0)
var_6.save!
var_6 = ProductVariation.new(product: prod_6, size:"60x10X15",color:"Cromo", name:"Aplique", price:8000.0)
var_6.save!