class MassAssignmentController < ApplicationController
  def register
  #  if request.post?    
      @user = User.new(params[:user])
      
      if @user.save
        flash[:notice] = 'Zarejestrowano pomyslnie'
        redirect_to(:action => 'index') 
      else
        render :action => :new
      end
      
   # end
  end

  def index
    @users = User.find(:all)
  end
  
  def new
    @user = User.new
  end

end
