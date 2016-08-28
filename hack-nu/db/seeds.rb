# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Planning.create([{category:'Gastos fixos', subcategory: 'conta água', value: 30},
  {category:'Gastos fixos', subcategory: 'Conta luz', value: 50},
  {category:'Gastos fixos', subcategory: 'Aluguel', value: 2000},
  {category:'Gastos fixos', subcategory: 'Telefonia', value: 90},
  {category:'Gastos fixos', subcategory: 'Faculdade', value: 700},
  {category:'Gastos variáveis', subcategory: 'Bares e Restaurantes', value: 150},
  {category:'Gastos variáveis', subcategory: 'Educação', value: 100},
  {category:'Gastos variáveis', subcategory: 'Saúde', value: 90},
  {category:'Gastos variáveis', subcategory: 'Serviços', value: 20},
  {category:'Gastos variáveis', subcategory: 'Transporte', value: 80},
  {category:'Gastos variáveis', subcategory: 'Viagem', value: 500}])
