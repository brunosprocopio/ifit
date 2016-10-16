json.extract! restaurante, :id, :nome, :cnpj, :razao_social, :usuario, :senha, :created_at, :updated_at
json.url restaurante_url(restaurante, format: :json)