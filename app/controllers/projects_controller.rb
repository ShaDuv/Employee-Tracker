class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render :index
  end

  def new
    @employee = Employee.find(params[:id])
    @project = @employee.projects.new
    render :new
  end

  def create
    @employee = Employee.find(params[:id])
    @project = @employee.projects.new(project_params)
    if @project.save
      redirect_to employee_path(@employee)
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
