class PratoMontado < ActiveRecord::Base
  belongs_to :prato
  has_many :alimento_precos
end
