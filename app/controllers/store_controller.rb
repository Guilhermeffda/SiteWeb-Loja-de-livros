
# Aqui definimos o controlador StoreController
# que será responsável por exibir a lista de produtos
# na nossa loja virtual.

class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = Time.now
  end
end

