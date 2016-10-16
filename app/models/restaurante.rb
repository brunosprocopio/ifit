class Restaurante < ActiveRecord::Base
  has_one :endereco_restaurante
  has_one :restaurantes_proximo
  has_many :pratos
  has_one :pagamento_aceito
end
