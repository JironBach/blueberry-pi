require 'rails_helper'

RSpec.describe User, type: :model do
  it 'mail_accountなしはバリデーションエラー' do
    user = build(:user, mail_account: nil)
    valid = user.valid?
    expect(valid).to be_falsey
  end
  it 'passwordなしはバリデーションエラー' do
    user = build(:user, password: nil)
    valid = user.valid?
    expect(valid).to be_falsey
  end

  it '間違ったパスワードはfalse' do
    user = create(:user)
    verify = user.verify_password('test')
    expect(verify).to be_falsey
  end
  it '正しいパスワードはtrue' do
    user = create(:user)
    verify = user.verify_password('TestForBlueberryPi')
    expect(verify).to be_truthy
  end

end
