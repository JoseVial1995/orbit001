class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
  	@user = User.find(params[:id])
  end
  def create
  	#@user = User.new(params[:user])
  	@user = User.new(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
  	if @user.save
      flash[:success] = "Welcome to Orbit"
  		redirect_to @user
      #render 'show'
  	else
  		render 'new'
  	end
  end
end
