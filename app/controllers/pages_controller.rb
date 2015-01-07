class PagesController < ApplicationController
  def home
      @guest_name = params[:guest_name] 
  end

  def about
  end

  def warehouses
  end

end
