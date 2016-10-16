json.extract! alimento_quantidade, :id, :nome, :quantidade, :prato_pronto_id, :created_at, :updated_at
json.url alimento_quantidade_url(alimento_quantidade, format: :json)