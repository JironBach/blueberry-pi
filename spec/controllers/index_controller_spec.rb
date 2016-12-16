require 'rails_helper'

RSpec.describe IndexController, type: :controller do
  describe 'GET #index' do
    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #about' do
    it "renders the :about template" do
      get :about
      expect(response).to render_template(:about)
    end
  end

  describe 'GET #corporate' do
    it "renders the :corporate template" do
      get :corporate
      expect(response).to render_template(:corporate)
    end
  end

  describe 'GET #sitemap' do
    it "renders the :sitemap template" do
      get :sitemap
      expect(response).to render_template(:sitemap)
    end
  end

  describe 'GET #privacy' do
    it "renders the :privacy template" do
      get :privacy
      expect(response).to render_template(:privacy)
    end
  end
end
