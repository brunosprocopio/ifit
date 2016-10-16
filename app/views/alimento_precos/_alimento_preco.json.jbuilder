json.extract! alimento_preco, :id, :nome, :preco, :prato_montado_id, :created_at, :updated_at
json.url alimento_preco_url(alimento_preco, format: :json)