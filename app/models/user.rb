class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  has_many :pedidos, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: self
  self.skip_session_storage = [:http_auth, :params_auth]

  validates :nome, presence: true
  def jwt_payload
    { 'foo' => 'bar' }
  end
end
