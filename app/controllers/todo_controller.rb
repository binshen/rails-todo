class TodoController < ApplicationController

  def index
    @site_name = "TODO List"
    @todos = Todo.all
  end

end
