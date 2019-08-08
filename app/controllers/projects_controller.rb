class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end

  def new
    @project = Project.new
    render :new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path()
    else
      render :new
    end
  end

  def show
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:employee_id])
    @project = Project.find(params[:id])
    render :show
  end

  def edit
    @employee = Employee.find(params[:employee_id])
    @project = Project.find(params[:id])
    render :edit
  end

  private
    def project_params
      params.require(:project).permit(:name)
    end

end
