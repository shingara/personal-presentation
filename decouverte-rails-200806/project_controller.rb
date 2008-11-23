class ProjectsController < ApplicationController

  # http://localhost:3000/projects
  def index
    @projects = Project.find :all
  end

  # http://localhost:3000/projects/1
  def show
    @project = Project.find params[:id]
  end

end
