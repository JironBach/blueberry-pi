require 'rails_helper'

RSpec.describe Admin, type: :model do
  it '間違ったパスワードはfalse' do
    admin = create(:admin)
    verify = admin.verify_password('test')
    expect(verify).to be_falsey
  end

  it '正しいパスワードはtrue' do
    admin = create(:admin)
    verify = admin.verify_password('TestForBlueberryPi')
    expect(verify).to be_truthy
  end

end
