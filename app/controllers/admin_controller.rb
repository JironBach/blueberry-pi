class AdminController < ApplicationController
  before_filter :login_check, except: [:enter, :login]

  def enter
  end

  def index
  end

  def login
    admin = Admin.first
    result = admin.nil? nil : admin.verify_password(params[:password])
    if result
      session['user'] = nil
      session['admin'] = admin
      redirect_to admin_index_path, notice: 'ブルーベリー・パイ管理画面です'
    else
      redirect_to admin_path, alert: '入力が間違っています'
    end
  end

  def logout
      session['admin'] = nil
      redirect_to root_path, notice: ''
  end

  private
  def login_check
    redirect_to admin_path, notice: 'ログインしてください' if session['admin'].nil?
  end
end
