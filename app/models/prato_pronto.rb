class PratoPronto < ActiveRecord::Base
  belongs_to :prato
  has_many :alimento_quantidades
end
