class Admin < ActiveRecord::Base
  before_save :encrypt_password

  def encrypt_password
    self.password = encrypt(self.password)
  end

  def verify_password(password)
    begin
      password == decrypt(self.password)
    rescue
      return false
    end
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
