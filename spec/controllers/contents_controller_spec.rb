require 'rails_helper'

RSpec.describe ContentsController, type: :controller do
=begin
  describe 'GET #hangouts' do
    it "renders the :hangouts template" do
      get :hangouts
      expect(response).to render_template(:hangouts)
    end
  end
=end
  describe 'GET #hour_of_code' do
    it "renders the :hour_of_code template" do
      get :hour_of_code
      expect(response).to render_template(:hour_of_code)
    end
  end
  describe 'GET #scratch' do
    it "renders the :scratch template" do
      get :scratch
      expect(response).to render_template(:scratch)
    end
  end
=begin
  describe 'GET #ruby' do
    it "renders the :ruby template" do
      get :ruby
      #expect(response).to render_template(:ruby)
    end
  end
  describe 'GET #ios' do
    it "renders the :ios template" do
      get :ios
      #expect(response).to render_template(:ios)
    end
  end
  describe 'GET #android' do
    it "renders the :android template" do
      get :android
      #expect(response).to render_template(:android)
    end
  end
=end
end
