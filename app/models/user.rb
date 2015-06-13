class User < ActiveRecord::Base
  enum membership: [:basic, :plus, :pro]
  has_secure_password
end
