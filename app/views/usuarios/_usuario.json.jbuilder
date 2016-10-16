json.extract! usuario, :id, :nome, :cpf, :idade, :usuario, :senha, :sessao_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)