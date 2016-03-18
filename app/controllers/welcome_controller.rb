class WelcomeController < ApplicationController

  def home
  	flash[:notice] = t(:hello_flash)
  end

end
