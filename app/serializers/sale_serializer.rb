# frozen_string_literal: true

class SaleSerializer < ActiveModel::Serializer
  has_many :products

  attributes :id, :cliente, :data, :telefone, :telefone2, :pagamento, :valor_total_pedido, :email,
             :observacao, :cep, :rua, :bairro, :numero, :complemento, :data_entrega, :horario_entrega, :status

  class ProductSerializer < ActiveModel::Serializer
    attributes :id, :pro_nome, :preco
  end
end
