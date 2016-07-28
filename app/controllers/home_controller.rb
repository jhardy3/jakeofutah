class HomeController < ApplicationController
  def index
    session[:authenticated] = false
  end
  def contact
  end
end
