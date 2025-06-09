

# Esse arquivo define o modelo Product, que representa um produto em nossa aplicação.
# Esse modelo inclui validações para garantir que os atributos do produto sejam preenchidos corretamente.
# app/models/product.rb

class Product < ApplicationRecord

    # O validates checa se os atributos estão preenchidos
        # O presence faz com que o atributo seja obrigatório
    validates :title, :description, :image_url, presence: true 

    # Aqui fazemos com que para o numero seja so valido se for maior ou igual a 0.01
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }

    # Faz com que mão seja permitidos titulos iguais
    validates :title, uniqueness: true

    # Aqui vai checar se o formato esta entre URL para GIF, JPG ou PNG, caso não for, não sera permitido
        # Usamos as expressões regulares para validar caracteres apos o ponto
    validates :image_url, allow_blank: true, format: {
        with:
        %r{\.(gif|jpg|png)\z}i,
        message: 'Deve ser uma URL para GIF, JPG ou PNG.'
    }
            #o "\z" indica o fim de uma String, e o "i" transforma todos o caracteres em minúsculos(no caso os que buscamos)

end
