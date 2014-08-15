# -*- coding: utf-8 -*-
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  before_action :authorize

  def authorize
    unless session[:user_id]
      redirect_to \
        controller: :sessions,
        action: :new,
        alert: "まずはログインしましょう"

    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


end
