class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save!
    redirect_to root_path, notice: "タスク「#{task.name}」を登録致しました"
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
