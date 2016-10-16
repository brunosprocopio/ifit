class Sessao < ActiveRecord::Base
  has_one :endereco_sessao
  has_one :usuario
  has_many :restaurantes_proximos
end
