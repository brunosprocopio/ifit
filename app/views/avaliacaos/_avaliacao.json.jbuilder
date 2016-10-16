json.extract! avaliacao, :id, :nota_alimento, :comentario, :nota_custo, :nota_geral, :created_at, :updated_at
json.url avaliacao_url(avaliacao, format: :json)