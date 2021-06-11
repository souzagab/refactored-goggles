# frozen_string_literal: true

class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :cliente
      t.datetime :data
      t.string :telefone
      t.string :telefone2
      t.float :pagamento
      t.float :valor_total_pedido
      t.string :email
      t.text :observacao
      t.string :cep
      t.string :rua
      t.string :bairro
      t.string :numero
      t.string :complemento
      t.date :data_entrega
      t.string :horario_entrega
      t.string :status

      t.timestamps
    end
  end
end
