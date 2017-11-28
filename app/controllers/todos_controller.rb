class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todos = Todo.new
  end


  def create
    @todos = Todo.new(todo_params)
    if @todos.save
          redirect_to todos_path
        else
          render :new
        end
    end
  
  private
  
  def todo_params
      params.require(:todo).permit(:name, :content, :date)
  end

  

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
