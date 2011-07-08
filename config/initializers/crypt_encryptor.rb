module Devise
  module Encryptors
    class Crypt < Base
      def self.digest(password, stretches, salt, pepper)
        password.crypt(salt)
      end
      def self.salt(stretches)
        "$1$#{Devise.friendly_token}"
      end
    end
  end
end
