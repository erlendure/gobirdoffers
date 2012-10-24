class OwnersController < ApplicationController
  before_filter :signed_in_user
  
  def index
    @owners = Owner.paginate(page: params[:page])    
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new    
  end

  def create
    @owner = Owner.new(params[:owner])
    if @owner.save
      redirect_to owners_path
    else
      render 'new'
    end    
  end

  def edit
    @owner = Owner.find(params[:id])    
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update_attributes(params[:owner])
      flash[:success] = "Owner updated"
      redirect_to owners_path
    else
      render 'edit'
    end
  end

  def destroy
    Owner.find(params[:id]).destroy
    flash[:success] = "Owner destroyed."
    redirect_to owners_path
  end
end
