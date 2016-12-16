class AdminController < ApplicationController
  before_filter :login_check, except: [:index, :login]

  def enter
  end

  def index
  end

  def login
    admin = Admin.first
    result = admin.verify_password(params[:password])
    if result
      redirect_to admin_index_path, notice: 'ブルーベリー・パイ管理画面です'
    else
      redirect_to admin_path, alert: '入力が間違っています'
    end
  end

  private
  def login_check
    redirect_to admin_path, notice: 'ログインしてください' if !session['user'].nil? && session['admin'].nil?
  end
end
