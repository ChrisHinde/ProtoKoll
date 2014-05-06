class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update, :show, :new]
  before_action :correct_user,   only: [:edit, :update]

  def show
    @user = User.find params[:id]
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new user_params
    
    if @user.save
      flash[:success] = "Ny användare skapad!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  #  @user = User.find params[:id]
  end
  
  def update    
    if @user.update_attributes(user_params)
      flash[:success] = "Profilen uppdaterades"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
    def signed_in_user
      redirect_to signin_url, notice: "Vänligen logga in först!" unless signed_in?
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
