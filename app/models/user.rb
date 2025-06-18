class User < ApplicationRecord
  # O has_secure_password() garante que o modelo User
  # tenha funcionalidades de autenticação, como validação de senha
  # e geração de hash de senha.
  has_secure_password
end
