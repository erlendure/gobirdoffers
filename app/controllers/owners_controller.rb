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
    @countries = Country.select("id, country_name").all        
  end

  def create
    @owner = current_user.owners.build(params[:owner])
    if @owner.save
      redirect_to owners_path
    else
      @countries = Country.select("id, country_name").all      
      render 'new'
    end    
  end

  def edit
    @owner = Owner.find(params[:id])
    @countries = Country.select("id, country_name").all        
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update_attributes(params[:owner])
      flash[:success] = "Owner updated"
      redirect_to owners_path
    else
      @countries = Country.select("id, country_name").all          
      render 'edit'
    end
  end

  def destroy
    Owner.find(params[:id]).destroy
    flash[:success] = "Owner destroyed."
    redirect_to owners_path
  end
end
