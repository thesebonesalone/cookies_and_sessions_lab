class ProductsController < ApplicationController
  def root
  end

  def add
    self.cart << params[:product]
    redirect_to products_path
  end

  def index
    @cart = self.cart
  end
end
