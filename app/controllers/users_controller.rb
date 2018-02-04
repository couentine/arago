class UsersController < ApplicationController

def index
  @users = User.all

   respond_to do |format|
     format.html # index.html.erb
     format.xml  { render :xml => @users }
   end
end

  def show
    @user_photos = current_user.photos
    puts @user_photos
end


def profiles
  @user = User.find(params[:id])
  @user_photos = User.find(params[:id]).photos
  puts @user_photos

 respond_to do |format|
   format.html # profiles.html.erb
   format.xml  { render :xml => @user }
 end
  end
end
