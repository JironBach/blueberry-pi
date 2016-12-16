require 'rails_helper'

RSpec.describe Admin, type: :model do
  it '間違ったパスワードはfalse' do
    admin = Admin.new(password: 'TestForBlueberryPi')
    admin.encrypt_password
    verify = admin.verify_password('test')
    expect(verify).to be_falsey
  end

  it '正しいパスワードはtrue' do
    admin = Admin.new(password: 'TestForBlueberryPi') #create(:admin)
    admin.encrypt_password
    puts "JironBach:admin_pw_enc=#{admin.password}"
    puts "JironBach:admin_pw_dec=#{admin.decrypt(admin.password)}"
    verify = admin.verify_password('TestForBlueberryPi')
    expect(verify).to be_truthy
  end

end
