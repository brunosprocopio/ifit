class Usuario < ActiveRecord::Base
  belongs_to :sessao
  has_many :avaliacaos
end
