class CreateProductRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :product_requests do |t|
      t.references :product, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true

      t.string :numero_pedido
      t.integer :codigo_produto
      t.integer :qtde
      t.integer :unitario
      t.float :valor_total
      t.datetime :data
      t.float :custo
      t.float :desconto

      t.timestamps
    end
  end
end
