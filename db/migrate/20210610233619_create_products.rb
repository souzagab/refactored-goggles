class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :pro_codigo
      t.string :desconto
      t.string :descricao_tecnica
      t.string :tipo_embalagem
      t.string :pro_nome
      t.float :preco
      t.string :departamento
      t.string :secao
      t.string :categoria
      t.string :preco_desconto,  default: 0
      t.string :ncm
      t.string :ean
      t.float :custo
      t.float :estoque

      t.timestamps
    end
  end
end
