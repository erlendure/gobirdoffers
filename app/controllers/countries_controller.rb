class CountriesController < ApplicationController
  before_filter :signed_in_user
  before_filter :admin_user
  
  def index
    @countries = Country.paginate(page: params[:page])    
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new    
  end

  def create
    @country = Country.new(params[:country])
    if @country.save
      redirect_to countries_path
    else
      render 'new'
    end    
  end

  def edit
    @country = Country.find(params[:id])    
  end

  def update
    @country = Country.find(params[:id])
    if @country.update_attributes(params[:country])
      flash[:success] = "Country updated"
      redirect_to countries_path
    else
      render 'edit'
    end
  end

  def destroy
    Country.find(params[:id]).destroy
    flash[:success] = "Country destroyed."
    redirect_to countries_path
  end
end
