class Pedido < ActiveRecord::Base
  belongs_to :usuario
  has_one :dados_cartao
end
