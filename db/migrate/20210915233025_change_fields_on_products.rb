class ChangeFieldsOnProducts < ActiveRecord::Migration[6.1]
  def change
    Product.destroy_all

    change_table :products do |t|
      t.change :preco_desconto, :float
    end
  end
end
