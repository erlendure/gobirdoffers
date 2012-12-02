class ImagesController < ApplicationController
  before_filter :signed_in_user
  
  def index
    @offer = Offer.find(params[:format])    
    @images = Image.where(offer_id: params[:format])
    @iimages = Image.new
  end

  def create
    @image = Image.new(params[:image])
    if @image.save
      @offer_id = Offer.find(params[:image][:offer_id])   
      flash[:success] = "Image created"          
      redirect_to images_path(@offer_id)
    else
      @offer = Offer.find(params[:image][:offer_id])    
      @images = Image.where(offer_id: params[:image][:offer_id])
      @iimages = Image.new
      render 'index'
    end    
  end

  def edit
    @image = Image.find(params[:id]) 
  end

  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      @offer_id = Offer.find(@image.offer_id)     	
      flash[:success] = "Image updated"
      redirect_to images_path(@offer_id)
    else
      @offer = Offer.find(params[:image][:offer_id])    
      @images = Image.where(offer_id: params[:image][:offer_id])
      @iimages = Image.new		
      render 'edit'
    end
  end

  def destroy
    @hsh_offer = Image.select("offer_id").find(params[:id]) 
    @offer_id = @hsh_offer[:offer_id]
    Image.find(params[:id]).destroy
    flash[:success] = "Image destroyed."
    redirect_to images_path(@offer_id)
  end  
end
