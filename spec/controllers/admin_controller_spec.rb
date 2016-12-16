require 'rails_helper'

RSpec.describe AdminController, type: :controller do
  describe 'GET #enter' do
    it "renders the :enter template" do
      get :enter
      expect(response).to render_template(:enter)
    end
  end
  describe 'GET #index' do
    it "ログイン前はenterにリダイレクトされる" do
      get :index
      expect(response).to redirect_to(admin_path)
    end
  end
=begin
  describe 'GET #logout' do
    it "logoutはrootにリダイレクトされる" do
      get :logout
      expect(response).to redirect_to(root_path)
    end
  end
=end

  describe 'POST #admin' do
    it '間違ったパスワードはenterにリダイレクト' do
      post :login, password: 'test'
      expect(response).to redirect_to admin_path
    end
  end
  describe 'POST #admin' do
    it '正しいパスワードはindexにリダイレクト' do
      post :login, password: 'TestForBlueberryPi'
      expect(response).to redirect_to admin_index_path
    end
  end

end
