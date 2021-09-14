# frozen_string_literal: true

# == Schema Information
#
# Table name: product_requests
#
#  id             :integer          not null, primary key
#  codigo_produto :integer
#  custo          :float
#  data           :datetime
#  desconto       :float
#  numero_pedido  :string
#  qtde           :integer
#  unitario       :integer
#  valor_total    :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  product_id     :integer          not null
#  sale_id        :integer          not null
#
# Indexes
#
#  index_product_requests_on_product_id  (product_id)
#  index_product_requests_on_sale_id     (sale_id)
#
# Foreign Keys
#
#  product_id  (product_id => products.id)
#  sale_id     (sale_id => sales.id)
#
class ProductRequest < ApplicationRecord
  belongs_to :product
  belongs_to :sale
end
