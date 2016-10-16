class Prato < ActiveRecord::Base
  has_many :tags
  has_many :avaliacaos
end
