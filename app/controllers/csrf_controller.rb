class CsrfController < ApplicationController
  def index
    
  end
  
  def go_to_google
    render '/home/mateusz/Projekty/security_app/public/csrf.html', :layout => false
  end

end
