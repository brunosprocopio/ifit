# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Prato.create :id => 1, :nome => "p1", :descricao => "d1", :cozinha => 1, :tipo => 1, :restaurante_id => 1
Prato.create :id => 2, :nome => "p2", :descricao => "d2", :cozinha => 2, :tipo => 0, :restaurante_id => 2
Prato.create :id => 3, :nome => "p3", :descricao => "d3", :cozinha => 3, :tipo => 1, :restaurante_id => 3
Prato.create :id => 4, :nome => "p4", :descricao => "d4", :cozinha => 4, :tipo => 1, :restaurante_id => 1
Prato.create :id => 5, :nome => "p5", :descricao => "d5", :cozinha => 5, :tipo => 0, :restaurante_id => 2
Prato.create :id => 6, :nome => "p6", :descricao => "d6", :cozinha => 6, :tipo => 1, :restaurante_id => 3
Prato.create :id => 7, :nome => "p7", :descricao => "d7", :cozinha => 7, :tipo => 0, :restaurante_id => 1
Prato.create :id => 8, :nome => "p8", :descricao => "d8", :cozinha => 8, :tipo => 1, :restaurante_id => 2
Prato.create :id => 9, :nome => "p9", :descricao => "d9", :cozinha => 9, :tipo => 0, :restaurante_id => 3
Prato.create :id => 10, :nome => "p10", :descricao => "d10", :cozinha => 10, :tipo => 1, :restaurante_id => 1
Prato.create :id => 11, :nome => "p11", :descricao => "d11", :cozinha => 11, :tipo => 0, :restaurante_id => 2
Prato.create :id => 12, :nome => "p12", :descricao => "d12", :cozinha => 12, :tipo => 1, :restaurante_id => 3