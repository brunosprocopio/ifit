class Usuario < ActiveRecord::Base
  belongs_to :sessao
  has_many :avaliacaos

  validates_presence_of :nome, :usuario, :senha
  validates_uniqueness_of :usuario

  def self.authenticate(user, password)
    Usuario.where(usuario: user, senha: password).pluck(:id)
  end
end
