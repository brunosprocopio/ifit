class EnderecoRestaurante < ActiveRecord::Base
  belongs_to :restaurante
  has_many :pedido
end
