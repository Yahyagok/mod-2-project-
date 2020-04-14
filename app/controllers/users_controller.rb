

class UsersController < ApplicationController

def show

end 

def new
  @user = User.new
end 

def create 
    @user = User.create(user_params)
    if @user.valid?
      redirect_to @user
    else 
      flash[:errors] = @user.errors.full_messages
      redirect_to  new_user_path
    end 
end 

 def edit 
     @user = User.find(params[:id])
end

def update 
  
  if @user.update(user_params)
    redirect_to @user
  else 
    flash[:errors] = @user.errors.full_messages
    redirect_to  edit_user_path(@user)
  end 
end


private 

def user_params
  params.require(:user).permit(:name, :password) 
end 


end
