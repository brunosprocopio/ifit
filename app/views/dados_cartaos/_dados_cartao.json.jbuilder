json.extract! dados_cartao, :id, :nome, :vencimento, :numero, :cod_seguranca_integer, :tipo, :created_at, :updated_at
json.url dados_cartao_url(dados_cartao, format: :json)