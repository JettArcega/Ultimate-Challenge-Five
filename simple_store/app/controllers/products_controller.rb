class ProductsController < ApplicationController
  def index
    @all_products = Product.all
  end

  def action
  end
end
