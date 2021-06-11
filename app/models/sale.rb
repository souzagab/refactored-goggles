# frozen_string_literal: true

class Sale < ApplicationRecord
  has_many :product_requests
  has_many :products, through: :product_requests
end
