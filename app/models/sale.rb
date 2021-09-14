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
class Sale < ApplicationRecord
  has_many :product_requests
  has_many :products, through: :product_requests
end
