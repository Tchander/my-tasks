class TodoController < ApplicationController

  def create
    @project = Project.find_by(:title, params[:title])
    if @project
      @project.todos.build(params[:text])
      @project.save
    else
      @project = Project.new(params[:title])
      @project.todos.build(params[:text])
      @project.save
    end
  end

  def update
    @todo = Todo.all.find(params[:todo_id])
    @todo.update_attribute(:isCompleted, params[:isCompleted])
    render json: @todo
  end

end
