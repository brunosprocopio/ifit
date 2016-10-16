class PedidosHasPrato < ActiveRecord::Base
  belongs_to :pedidos
  belongs_to :pratos
end
