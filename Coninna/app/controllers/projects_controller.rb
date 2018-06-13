class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :download_file]

  # GET /projects
  # GET /projects.json
  def index
    @categories = Category.all
    @projects = Project.search(params[:searchbox])
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show

	@project = Project.find(params[:id])
	@promises = Promise.all
	@actual = Fund.where(:project_id => @project.id, :email_confirmed => true).sum(:amount)
  end

  def show_my
    @projects = current_user.projects
  end
def pending
    @projects = Project.all
  end
  # GET /projects/new
  def new
    @project = Project.new
    
  end

  # GET /projects/1/edit
  def edit
  end
  def download_file
    @photo= Project.find(params[:id])

    send_file @photo.photo.path,
    :filename => @photo.photo_file_name,
    :type => @photo.photo_content_type,
    :disposition => "attachment"
    flash[:notice]= "Image downloaded"
  end


  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:description, :days_to_go, :goal_amount, :approves, :actual_money, :outstanding, :title, :descriptive_page, :photo, category_ids: [],  promises_attributes: [ :description, :amount, :delivery_date])
    end
end
