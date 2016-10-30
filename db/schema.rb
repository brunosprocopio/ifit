# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161016051116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alimento_precos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "preco"
    t.integer  "prato_montado_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "alimento_precos", ["prato_montado_id"], name: "index_alimento_precos_on_prato_montado_id", using: :btree

  create_table "alimento_quantidades", force: :cascade do |t|
    t.string   "nome"
    t.integer  "quantidade"
    t.integer  "prato_pronto_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "alimento_quantidades", ["prato_pronto_id"], name: "index_alimento_quantidades_on_prato_pronto_id", using: :btree

  create_table "avaliacaos", force: :cascade do |t|
    t.integer  "nota_alimento"
    t.string   "comentario"
    t.integer  "nota_custo"
    t.integer  "nota_geral"
    t.integer  "prato_id"
    t.integer  "usuario_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "avaliacaos", ["prato_id"], name: "index_avaliacaos_on_prato_id", using: :btree
  add_index "avaliacaos", ["usuario_id"], name: "index_avaliacaos_on_usuario_id", using: :btree

  create_table "dados_cartaos", force: :cascade do |t|
    t.string   "nome"
    t.date     "vencimento"
    t.integer  "numero"
    t.string   "cod_seguranca_integer"
    t.integer  "tipo"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "endereco_restaurantes", force: :cascade do |t|
    t.integer  "cep"
    t.string   "pais"
    t.string   "estado"
    t.string   "cidade"
    t.string   "rua"
    t.integer  "numero"
    t.integer  "complemento"
    t.integer  "restaurante_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "endereco_restaurantes", ["restaurante_id"], name: "index_endereco_restaurantes_on_restaurante_id", using: :btree

  create_table "endereco_sessaos", force: :cascade do |t|
    t.integer  "cep"
    t.string   "pais"
    t.string   "estado"
    t.string   "cidade"
    t.string   "rua"
    t.integer  "numero"
    t.integer  "complemento"
    t.integer  "sessao_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "endereco_sessaos", ["sessao_id"], name: "index_endereco_sessaos_on_sessao_id", using: :btree

  create_table "pagamento_aceitos", force: :cascade do |t|
    t.boolean  "cash"
    t.boolean  "credit_card"
    t.boolean  "debit_card"
    t.integer  "restaurante_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "pagamento_aceitos", ["restaurante_id"], name: "index_pagamento_aceitos_on_restaurante_id", using: :btree

  create_table "pedidos", force: :cascade do |t|
    t.date     "data"
    t.integer  "preco_total"
    t.integer  "tipo_pagamento"
    t.integer  "usuario_id"
    t.integer  "endereco_restaurante_id"
    t.integer  "dados_cartao_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "pedidos", ["dados_cartao_id"], name: "index_pedidos_on_dados_cartao_id", using: :btree
  add_index "pedidos", ["endereco_restaurante_id"], name: "index_pedidos_on_endereco_restaurante_id", using: :btree
  add_index "pedidos", ["usuario_id"], name: "index_pedidos_on_usuario_id", using: :btree

  create_table "pedidos_has_pratos", force: :cascade do |t|
    t.integer  "pedido_id"
    t.integer  "prato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pedidos_has_pratos", ["pedido_id"], name: "index_pedidos_has_pratos_on_pedido_id", using: :btree
  add_index "pedidos_has_pratos", ["prato_id"], name: "index_pedidos_has_pratos_on_prato_id", using: :btree

  create_table "prato_montados", force: :cascade do |t|
    t.integer  "prato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "prato_montados", ["prato_id"], name: "index_prato_montados_on_prato_id", using: :btree

  create_table "prato_prontos", force: :cascade do |t|
    t.string   "preco"
    t.integer  "prato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "prato_prontos", ["prato_id"], name: "index_prato_prontos_on_prato_id", using: :btree

  create_table "pratos", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.integer  "cozinha"
    t.integer  "tipo"
    t.integer  "restaurante_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "pratos", ["restaurante_id"], name: "index_pratos_on_restaurante_id", using: :btree

  create_table "restaurantes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "razao_social"
    t.string   "usuario"
    t.string   "senha"
    t.integer  "latitude"
    t.integer  "longitude"
    t.boolean  "cartao_credito"
    t.boolean  "cartao_debito"
    t.boolean  "dinheiro"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "restaurantes_proximos", force: :cascade do |t|
    t.integer  "distancia"
    t.integer  "sessao_id"
    t.integer  "restaurante_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "restaurantes_proximos", ["restaurante_id"], name: "index_restaurantes_proximos_on_restaurante_id", using: :btree
  add_index "restaurantes_proximos", ["sessao_id"], name: "index_restaurantes_proximos_on_sessao_id", using: :btree

  create_table "sessaos", force: :cascade do |t|
    t.date     "data"
    t.string   "cookie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "nome"
    t.integer  "prato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["prato_id"], name: "index_tags_on_prato_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.integer  "cpf"
    t.integer  "idade"
    t.string   "usuario"
    t.string   "senha"
    t.integer  "sessao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "usuarios", ["sessao_id"], name: "index_usuarios_on_sessao_id", using: :btree

  add_foreign_key "alimento_precos", "prato_montados"
  add_foreign_key "alimento_quantidades", "prato_prontos"
  add_foreign_key "avaliacaos", "pratos"
  add_foreign_key "avaliacaos", "usuarios"
  add_foreign_key "endereco_restaurantes", "restaurantes"
  add_foreign_key "endereco_sessaos", "sessaos"
  add_foreign_key "pagamento_aceitos", "restaurantes"
  add_foreign_key "pedidos", "dados_cartaos"
  add_foreign_key "pedidos", "endereco_restaurantes"
  add_foreign_key "pedidos", "usuarios"
  add_foreign_key "pedidos_has_pratos", "pedidos"
  add_foreign_key "pedidos_has_pratos", "pratos"
  add_foreign_key "prato_montados", "pratos"
  add_foreign_key "prato_prontos", "pratos"
  add_foreign_key "pratos", "restaurantes"
  add_foreign_key "restaurantes_proximos", "restaurantes"
  add_foreign_key "restaurantes_proximos", "sessaos"
  add_foreign_key "tags", "pratos"
  add_foreign_key "usuarios", "sessaos"
end
