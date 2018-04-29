class TodosController < ApplicationController

  def all
    render json: TodoSerializer.new(Todo.all).serialized_json
  end

  def create
    todo = Todo.new(todo_params)
    todo.save
    render json: TodoSerializer.new(todo).serialized_json
  end

  def update
    Todo.find(params[:id]).update(done: true, estimated: params[:estimated])
    todo = Todo.find(params[:id])
    render json: TodoSerializer.new(todo).serialized_json
  end

  def delete
    todo = Todo.find(params[:id]).destroy
    render json: TodoSerializer.new(Todo.all).serialized_json
  end

  def todo_params
    params.permit(:text, :done, :time)
  end

  def update_params
    params.permit(:estimated)
  end

end
