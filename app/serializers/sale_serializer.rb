# frozen_string_literal: true

# == Schema Information
#
# Table name: sales
#
#  id                 :integer          not null, primary key
#  bairro             :string
#  cep                :string
#  cliente            :string
#  complemento        :string
#  data               :string
#  data_entrega       :string
#  email              :string
#  horario_entrega    :string
#  numero             :string
#  observacao         :text
#  pagamento          :string
#  rua                :string
#  status             :string
#  telefone           :string
#  telefone2          :string
#  valor_total_pedido :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class SaleSerializer < ActiveModel::Serializer
  has_many :products

  attributes :id, :cliente, :data, :telefone, :telefone2, :pagamento, :valor_total_pedido, :email,
             :observacao, :cep, :rua, :bairro, :numero, :complemento, :data_entrega, :horario_entrega, :status

  class ProductSerializer < ActiveModel::Serializer
    attributes :id, :pro_nome, :preco
  end
end
