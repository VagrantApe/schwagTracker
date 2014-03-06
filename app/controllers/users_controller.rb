class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.role = 'mod'
    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'Mod was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Mod was successfully updated.' }
        format.js
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :encrypted_password, :role)
    end

end
