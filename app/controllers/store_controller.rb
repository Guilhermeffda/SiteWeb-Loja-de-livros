
# Aqui definimos o controlador StoreController
# que será responsável por exibir a lista de produtos
# na nossa loja virtual.

class StoreController < ApplicationController

  skip_before_action :authorize

  include CurrentCart
  before_action :set_cart
  
  def index
    @products = Product.order(:title)
  end
end

