class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
      @user = User.new(params[:user])

      if @user.save
         sign_in @user
        # Handle a successful save.
          flash[:success] = "Welcome to the Daily Record!"
          redirect_to @user

      else
        @title = "Sign up"
        render 'new'
      end
  end

  def all
    @users = User.all
    render xml: @users
  end


end
