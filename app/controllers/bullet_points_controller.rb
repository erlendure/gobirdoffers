class BulletPointsController < ApplicationController
  before_filter :signed_in_user
  
  def index
    @offer = Offer.find(params[:format])    
    @bullet_points = BulletPoint.where(offer_id: params[:format])
    @bpoints = BulletPoint.new
  end

  def create
    @bullet_point = BulletPoint.new(params[:bullet_point])
    if @bullet_point.save
      @offer_id = Offer.find(params[:bullet_point][:offer_id])   
      flash[:success] = "Bullet Point created"          
      redirect_to bullet_points_path(@offer_id)
    else
      @offer = Offer.find(params[:bullet_point][:offer_id])  
      @bullet_points = BulletPoint.where(offer_id: params[:bullet_point][:offer_id])	  
      @bpoints = BulletPoint.new	  
      render 'index'
    end    
  end

  def edit
    @bullet_point = BulletPoint.find(params[:id]) 
  end
  
  def update
    @bullet_point = BulletPoint.find(params[:id])
    if @bullet_point.update_attributes(params[:bullet_point])
      @offer_id = Offer.find(@bullet_point.offer_id)     	
      flash[:success] = "Bullet Point updated"
      redirect_to bullet_points_path(@offer_id)
    else
      @offer = Offer.find(params[:bullet_point][:offer_id])  
      @bullet_points = BulletPoint.where(offer_id: params[:bullet_point][:offer_id])	  
      @bpoints = BulletPoint.new	
      render 'edit'
    end
  end

  def destroy
    @hsh_offer = BulletPoint.select("offer_id").find(params[:id]) 
    @offer_id = @hsh_offer[:offer_id]
    BulletPoint.find(params[:id]).destroy
    flash[:success] = "Bullet point destroyed."
    redirect_to bullet_points_path(@offer_id)
  end  
end
