class TodoController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @site_name = "TODO List"
    @todos = Todo.all
  end

  def create
    #@todo = Todo.new(:title => params.permit(:title, :text), :finished => 0, :post_date => DateTime.now)
    @todo = Todo.new(:title => params[:title], :finished => 0, :post_date => DateTime.now)
    @todo.save
    redirect_to :action => 'index'
  end

  def edit
    @site_name = "TODO List"
    @todo = Todo.find(params[:id])
  end

  def delete
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to :action => 'index'
  end

  def save
    @todo = Todo.find(params[:id])
    @todo.update(:title => params[:title])
    redirect_to :action => 'index'
  end

  def finish
    @todo = Todo.find(params[:id])
    @todo.update(:finished => params[:finished])
    redirect_to :action => 'index'
  end

end
