json.extract! prato, :id, :nome, :descricao, :cozinha, :tipo, :created_at, :updated_at
json.url prato_url(prato, format: :json)