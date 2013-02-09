class CategoriesController < ApplicationController
  before_filter :signed_in_user
  before_filter :admin_user
  
  def index
    @categories = Category.paginate(page: params[:page])    
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new    
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to categories_path
    else
      render 'new'
    end    
  end

  def edit
    @category = Category.find(params[:id])    
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:success] = "Category updated"
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    Category.find(params[:id]).destroy
    flash[:success] = "Category destroyed."
    redirect_to categories_path
  end
end
