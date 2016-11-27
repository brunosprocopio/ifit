# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
Sessao.create :id => 1
Restaurante.create :id => 1, :nome => "rest1", :usuario => "teste1", :senha => "teste1", :cartao_debito => false, :cartao_credito => false, :dinheiro => true
Restaurante.create :id => 2, :nome => "rest2", :usuario => "teste2", :senha => "teste2", :cartao_debito => false, :cartao_credito => true, :dinheiro => true
Restaurante.create :id => 3, :nome => "rest3", :usuario => "teste3", :senha => "teste3", :cartao_debito => true, :cartao_credito => true, :dinheiro => false
RestaurantesProximo.create :id => 1, :sessao_id => 1, :restaurante_id => 1
RestaurantesProximo.create :id => 2, :sessao_id => 1, :restaurante_id => 2
RestaurantesProximo.create :id => 3, :sessao_id => 1, :restaurante_id => 3
Prato.create :id => 1, :nome => "p1", :descricao => "d1" ,:alema => 1, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 1
Prato.create :id => 2, :nome => "p2", :descricao => "d2", :alema => 0, :arabe => 1, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 2
Prato.create :id => 3, :nome => "p3", :descricao => "d3", :alema => 0, :arabe => 0, :asiatica => 1, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 3
Prato.create :id => 4, :nome => "p4", :descricao => "d4", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 1, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 1
Prato.create :id => 5, :nome => "p5", :descricao => "d5", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 1, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 2
Prato.create :id => 6, :nome => "p6", :descricao => "d6", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 1, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 3
Prato.create :id => 7, :nome => "p7", :descricao => "d7", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 1, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 1
Prato.create :id => 8, :nome => "p8", :descricao => "d8", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 1, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 2
Prato.create :id => 9, :nome => "p9", :descricao => "d9", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 1, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 3
Prato.create :id => 10, :nome => "p10", :descricao => "d10", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 1, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 1
Prato.create :id => 11, :nome => "p11", :descricao => "d11", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 1, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 2
Prato.create :id => 12, :nome => "p12", :descricao => "d12", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 1, :tailandesa => 0, :tipo => 0, :restaurante_id => 3
PratoMontado.create :id => 1, :prato_id => 1
PratoMontado.create :id => 2, :prato_id => 3
PratoMontado.create :id => 3, :prato_id => 5
PratoMontado.create :id => 4, :prato_id => 7
PratoMontado.create :id => 5, :prato_id => 9
PratoMontado.create :id => 6, :prato_id => 11
PratoPronto.create :id => 1, :preco => 50, :prato_id => 2
PratoPronto.create :id => 2, :preco => 40, :prato_id => 4
PratoPronto.create :id => 3, :preco => 60, :prato_id => 6
PratoPronto.create :id => 4, :preco => 20, :prato_id => 8
PratoPronto.create :id => 5, :preco => 10, :prato_id => 10
PratoPronto.create :id => 6, :preco => 100, :prato_id => 12
AlimentoPreco.create :id => 1, :nome => 'batata_doce', :preco => 0.15, :prato_montado_id => 3
AlimentoPreco.create :id => 2, :nome => 'frango', :preco => 0.2, :prato_montado_id => 3