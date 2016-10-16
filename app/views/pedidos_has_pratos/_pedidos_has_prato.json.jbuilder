json.extract! pedidos_has_prato, :id, :pedidos_id, :pratos_id, :created_at, :updated_at
json.url pedidos_has_prato_url(pedidos_has_prato, format: :json)