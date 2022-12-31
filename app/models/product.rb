class Product < ApplicationRecord
  has_many :line_items
  scope :get_all_products, -> { order(:name) } #metodo Lamdba

  # def get_all_products
    # Product.order (:name)
  #end
end
