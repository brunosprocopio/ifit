# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Sessao.create :id => 1
Restaurante.create :id => 1, :nome => "rest1", :usuario => "teste1", :senha => "teste1", :cartao_debito => false, :cartao_credito => false, :dinheiro => true
Restaurante.create :id => 2, :nome => "rest2", :usuario => "teste2", :senha => "teste2", :cartao_debito => false, :cartao_credito => true, :dinheiro => true
Restaurante.create :id => 3, :nome => "rest3", :usuario => "teste3", :senha => "teste3", :cartao_debito => true, :cartao_credito => true, :dinheiro => false
RestaurantesProximo.create :id => 1, :sessao_id => 1, :restaurante_id => 1
RestaurantesProximo.create :id => 2, :sessao_id => 1, :restaurante_id => 2
RestaurantesProximo.create :id => 3, :sessao_id => 1, :restaurante_id => 3