# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# pre-populate items & packs
Product.create({
  name: "Vegemite Scroll",
  code: "VS5",
  product_packs_attributes: [{
    quantity: 3,
    price: 6.99
  }, {
    quantity: 5,
    price: 8.99
  }]
})

Product.create({
  name: "Blueberry Muffin",
  code: "MB11",
  product_packs_attributes: [{
    quantity: 2,
    price: 9.95
  }, {
    quantity: 5,
    price: 16.95
  }, {
    quantity: 8,
    price: 24.95
  }]
})

Product.create({
  name: "Croissant",
  code: "CF",
  product_packs_attributes: [{
    quantity: 3,
    price: 5.95
  }, {
    quantity: 5,
    price: 9.95
  }, {
    quantity: 9,
    price: 16.99
  }]
})