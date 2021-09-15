# frozen_string_literal: true

class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :cliente
      t.string :cpf
      t.string :telefone
      t.string :telefone2
      t.string :data
      t.string :pagamento
      t.string :data_entrega
      t.float :valor_total_pedido
      t.string :email
      t.text :observacao
      t.string :cep
      t.string :rua
      t.string :bairro
      t.string :numero
      t.string :complemento
      t.string :horario_entrega
      t.string :status

      t.timestamps
    end
  end
end
