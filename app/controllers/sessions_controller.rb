class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name]
      session[:name] = params[:name]
    end 
        redirect_to '/login'
  end

  def destroy
    session.delete :name
  end

end
