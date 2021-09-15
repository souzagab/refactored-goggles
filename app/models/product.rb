# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  categoria         :string
#  custo             :float
#  departamento      :string
#  desconto          :string
#  descricao_tecnica :string
#  ean               :string
#  estoque           :float
#  ncm               :string
#  preco             :float
#  preco_desconto    :float            default(0.0)
#  pro_codigo        :string
#  pro_nome          :string
#  secao             :string
#  tipo_embalagem    :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Product < ApplicationRecord
end
