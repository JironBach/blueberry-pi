class User < ActiveRecord::Base
  # gmail
  validates :gmail, :password, presence: true, uniqueness: { allow_blank: true }

before_save :encrypt_password

  def encrypt_password
    self.password = encrypt(self.password)
  end

  # 暗号化
  def encrypt(password)
    crypt = ActiveSupport::MessageEncryptor.new(SECURE, CIPHER)
    crypt.encrypt_and_sign(password)
  end

  # 復号化
  def decrypt(password)
    crypt = ActiveSupport::MessageEncryptor.new(SECURE, CIPHER)
    crypt.decrypt_and_verify(password)
  end

end
