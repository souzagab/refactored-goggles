class AlterFieldsOnSales < ActiveRecord::Migration[6.1]
  def change
    Sale.destroy_all

    change_table :sales do |t|
      t.change :data, :string
      t.change :pagamento, :string
      t.change :data_entrega, :string
    end
  end
end
