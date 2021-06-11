# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_11_225535) do

  create_table "product_requests", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "sale_id", null: false
    t.string "numero_pedido"
    t.integer "codigo_produto"
    t.integer "qtde"
    t.integer "unitario"
    t.float "valor_total"
    t.datetime "data"
    t.float "custo"
    t.float "desconto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_requests_on_product_id"
    t.index ["sale_id"], name: "index_product_requests_on_sale_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "pro_codigo"
    t.string "desconto"
    t.string "descricao_tecnica"
    t.string "tipo_embalagem"
    t.string "pro_nome"
    t.float "preco"
    t.string "departamento"
    t.string "secao"
    t.string "categoria"
    t.string "preco_desconto", default: "0"
    t.string "ncm"
    t.string "ean"
    t.float "custo"
    t.float "estoque"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string "cliente"
    t.datetime "data"
    t.string "telefone"
    t.string "telefone2"
    t.float "pagamento"
    t.float "valor_total_pedido"
    t.string "email"
    t.text "observacao"
    t.string "cep"
    t.string "rua"
    t.string "bairro"
    t.string "numero"
    t.string "complemento"
    t.date "data_entrega"
    t.string "horario_entrega"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "product_requests", "products"
  add_foreign_key "product_requests", "sales"
end
