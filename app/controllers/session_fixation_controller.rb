class SessionFixationController < ApplicationController
  def index
    @projects = Project.all
  end

  def change_session_id
  end

end
