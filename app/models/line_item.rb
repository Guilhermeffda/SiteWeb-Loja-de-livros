
# Aqui deinimos a classe LineItem, que representa um item de linha em um carrinho de compras.
# Ela pertence a um produto e a um carrinho, estabelecendo as relações entre esses modelos.

class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
end
