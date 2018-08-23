class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end
  
  def edit
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to todos_path
    else
      render :new
    end
  end
  
  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      redirect_to todo_path(@todo)
    else
      render :edit
    end
  end
  
  def destroy
    Todo.find(params[:id]).destroy
    redirect_to todos_path
  end

  private
    def todo_params
      params.require(:todo).permit(:name, :content, :date)
    end
end

  

