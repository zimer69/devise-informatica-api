class Pedido < ApplicationRecord
  belongs_to :user
  belongs_to :computador
end
