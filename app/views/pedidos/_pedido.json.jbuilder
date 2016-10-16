json.extract! pedido, :id, :data, :preco_total, :tipo_pagamento, :usuario_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)