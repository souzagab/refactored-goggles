# frozen_string_literal: true

class ProductRequest < ApplicationRecord
  belongs_to :product
  belongs_to :sale
end
