class PagesController < ApplicationController
  def home
  @product = Product.get_all_products
  end
end
