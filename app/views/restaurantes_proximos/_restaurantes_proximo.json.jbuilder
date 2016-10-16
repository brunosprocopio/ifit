json.extract! restaurantes_proximo, :id, :distancia, :sessao_id, :restaurante_id, :created_at, :updated_at
json.url restaurantes_proximo_url(restaurantes_proximo, format: :json)