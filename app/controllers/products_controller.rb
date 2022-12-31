class ProductsController < ApplicationController

  def index
    @products = Product.get_all_products
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
