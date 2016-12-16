require 'rails_helper'

RSpec.describe User, type: :model do
  it '間違ったパスワードはfalse' do
    user = build(:user)
    user.password = 'TestForBlueberryPi'
    user.encrypt_password
    verify = user.verify_password('test')
    expect(verify).to be_falsey
  end
  it '正しいパスワードはtrue' do
    user = build(:user)
    user.password = 'TestForBlueberryPi'
    user.encrypt_password
    verify = user.verify_password('TestForBlueberryPi')
    expect(verify).to be_truthy
  end

  it 'knick_nameなしはバリデーションエラー' do
    user = build(:user)
    user.knick_name = nil
    valid = user.valid?
    expect(valid).to be_falsey
  end
  it 'passwordなしはバリデーションエラー' do
    user = build(:user)
    valid = user.valid?
    expect(valid).to be_falsey
  end

end
