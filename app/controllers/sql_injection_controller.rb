class SqlInjectionController < ApplicationController
  def index
    #Project.delete_all
    if session[:user_id]
      @projects = Project.find(:all)
      if @projects.empty?
        #@projects = projects
        flash.now[:notice] = 'Nie ma zadnych projektow!'      
      else
        
      end
    end
  end

  def login
    if request.post?
      user = User.find(:first, :conditions => "name = '#{params[:name]}' AND password = '#{params[:password]}'")
      
      if user
        session[:user_id] = user.id
        redirect_to(:action => "index")
      else
        flash.now[:notice] = 'Blad logowania'
      end 
        
    end
  end
  
  def login_safe
    if request.post?
      
      user = User.find(:first, :conditions => ["name =  ? and password = ?", params[:name], params[:password]])
      if user
        session[:user_id] = user.id
        redirect_to(:action => "index")
      else
        flash.now[:notice] = 'Blad logowania'
      end         
    end
  end
  
  def logout
    session[:user_id] = nil
    redirect_to(:action => "index")    
  end
  
  def search_projects
    @projects = nil
    if request.post?
      @projects = Project.find(:all, :conditions => "title = '#{params[:title]}'")
     # @projects = Project.find(:all, :conditions => ["title = ?", params[:title]])
      if @projects.empty?
        flash.now[:notice] = 'Nie znaleziono projektow o nazwie: ' + params[:title]
      else
        flash.now[:notice] = 'Znaleziono projektow: ' + @projects.count.to_s
      end
    end
  end
end
