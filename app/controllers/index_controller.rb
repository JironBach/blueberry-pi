class IndexController < ApplicationController
  def index
    render :index
  end

  def about
    render :about
  end

  def corporate
    render :corporate
  end

  def sitemap
    render :sitemap
  end

  def privacy
    render :privacy
  end
end
