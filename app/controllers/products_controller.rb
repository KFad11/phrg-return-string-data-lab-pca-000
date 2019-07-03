class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.create(product_params)
    @product.save
    redirect_to product_path(@product)
  end

private

  def product_params
    params.require(:product).permit(:name, :price, :inventory, :description )
  end
end
