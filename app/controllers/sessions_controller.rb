# -*- coding: utf-8 -*-
class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:new, :create]

  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password]) # ココがポイント
      session[:user_id] = user.id.to_s # クソid対応
      redirect_to root_url, :notice => "Logged in!"
    else
      redirect_to new_session_path(alert: "なんか違う")
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end


end


