class Usuario < ActiveRecord::Base
  belongs_to :sessao
  has_many :avaliacaos

  def self.authenticate(user, password)
    Usuario.where(usuario: user, senha: password).pluck(:id)
  end
end
