class TasksController < ApplicationController
  # before_action :set_task, only: [:show, :edit, :update, :delete]
  def index         # GET /tasks
    @task = Task.all
  end

  def show          # GET /tasks/:id
    @task = Task.find(params[:id])

  end

  def new           # GET /tasks/new
    @task = Task.new
  end

  def create        # POST /tasks
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit          # GET /tasks/:id/edit
    @task = Task.find(params[:id])

  end

  def update        # PATCH /tasks/:id
    @task = Task.find(params[:id])
    @task.save
    redirect_to task_path(@task)
  end

  def destroy       # DELETE /tasks/:id
    @task = Task.find(params[:id])
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
