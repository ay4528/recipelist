# frozen_string_literal: true

# UsersController
class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'プロフィールを更新しました。'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile, :profile_image)
  end
end
