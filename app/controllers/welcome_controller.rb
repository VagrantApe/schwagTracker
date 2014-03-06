class WelcomeController < ApplicationController

  def index
    if current_user == 'admin' || 'mod'
      redirect_to products_path
     end
  end
end
