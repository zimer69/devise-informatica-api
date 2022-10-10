class User < ApplicationRecord
            # Include default devise modules.
  include Users::Allowlist

  has_many :pedidos

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: self
end
