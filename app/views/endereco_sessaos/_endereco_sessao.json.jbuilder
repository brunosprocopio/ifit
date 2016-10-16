json.extract! endereco_sessao, :id, :cep, :pais, :estado, :cidade, :rua, :numero, :complemento, :sessao_id, :created_at, :updated_at
json.url endereco_sessao_url(endereco_sessao, format: :json)