class OfferCategoriesController < ApplicationController
  before_filter :signed_in_user
  before_filter :get_category, only: [:index, :create, :edit, :update]    
  
  def index
    @offer = Offer.find(params[:format])    
    @offer_categories = OfferCategory.where(offer_id: params[:format])
    @ocategories = OfferCategory.new
  end

  def create
    @offer_categories = OfferCategory.new(params[:offer_category])
    if @offer_categories.save
      @offer_id = Offer.find(params[:offer_category][:offer_id])   
      flash[:success] = "Bullet Point created"          
      redirect_to offer_categories_path(@offer_id)
    else
      @offer = Offer.find(params[:offer_category][:offer_id])         
      redirect_to offer_categories_path(@offer.id)
    end
  end

  def edit
    @offer_category = OfferCategory.find(params[:id])
  end

  def update
    @offer_category = OfferCategory.find(params[:id])
    if @offer_category.update_attributes(params[:offer_category])
      @offer_id = Offer.find(@offer_category.offer_id)     	
      flash[:success] = "Category updated"
      redirect_to offer_categories_path(@offer_id)
    else
      render 'edit'
    end
  end

  def destroy
    @hsh_offer = OfferCategory.select("offer_id").find(params[:id]) 
    @offer_id = @hsh_offer[:offer_id]
    OfferCategory.find(params[:id]).destroy
    flash[:success] = "Category destroyed."
    redirect_to offer_categories_path(@offer_id)
  end  
  private
    def get_category
      @categories = Category.all
    end    
end
