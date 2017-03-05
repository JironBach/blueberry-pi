Rails.application.routes.draw do
  root 'index#index'

  get 'admin' => 'admin#enter'
  post 'admin' => 'admin#login'
  get 'admin/logout' => 'admin#logout'
  get 'admin/index' => 'admin#index'

  get 'about' => 'index#about'
  get 'corporate' => 'index#corporate'
  get 'sitemap' => 'index#sitemap'
  get 'privacy' => 'index#privacy'

  get 'contact' => 'inquiry#contact'

  get 'contents/hangouts' => 'contents#hangouts'
  get 'contents/hour_of_code' => 'contents#hour_of_code'
  get 'contents/scratch' => 'contents#scratch'
  get 'contents/codemonkey' => 'contents#codemonkey'
  get 'contents/ruby' => 'contents#ruby'
  get 'contents/ios' => 'contents#ios'
  get 'contents/android'  => 'contents#android'
end
