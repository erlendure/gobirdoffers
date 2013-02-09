class LocalesController < ApplicationController
  before_filter :signed_in_user
  before_filter :admin_user
  
  def index
    @locales = Locale.paginate(page: params[:page])    
  end

  def show
    @locale = Locale.find(params[:id])
  end

  def new
    @locale = Locale.new    
  end

  def create
    @locale = Locale.new(params[:locale])
    if @locale.save
      redirect_to locales_path
    else
      render 'new'
    end    
  end

  def edit
    @locale = Locale.find(params[:id])    
  end

  def update
    @locale = Locale.find(params[:id])
    if @locale.update_attributes(params[:locale])
      flash[:success] = "Locale updated"
      redirect_to locales_path
    else
      render 'edit'
    end
  end

  def destroy
    Locale.find(params[:id]).destroy
    flash[:success] = "Locale destroyed."
    redirect_to locales_path
  end
end
