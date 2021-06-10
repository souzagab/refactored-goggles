# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  {
    name: 'Produto 1',
    description: 'Produto 1',
    price: 10.0
  },
  {
    name: 'Produto 2',
    description: 'Produto 2',
    price: 10.0
  },
])