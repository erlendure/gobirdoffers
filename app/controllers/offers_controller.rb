class OffersController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def index
    @offers = Offer.paginate(page: params[:page])  
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
    @owners = Owner.select("id, name").where(:user_id => current_user.id)
  end  

  def create
    #@offer = current_user.offers.build(params[:offer])
    @offer = Offer.new(params[:offer])
    if @offer.save
      flash[:success] = "Offer created!"
      redirect_to offers_path
    else
      @owners = Owner.select("id, name").where(:user_id => current_user.id)
      render 'new'
    end
  end

  def edit
    @offer = Offer.find(params[:id])
    @owners = Owner.select("id, name").where(:user_id => current_user.id)
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update_attributes(params[:offer])
      flash[:success] = "Offer updated"
      redirect_to offers_path
    else
      @owners = Owner.select("id, name").where(:user_id => current_user.id)      
      render 'edit'
    end
  end

  def destroy
    Offer.find(params[:id]).destroy
    flash[:success] = "Offer destroyed."
    redirect_to offers_path    
  end

  private
    def correct_user
      @offer = current_user.offers.find_by_id(params[:id])
      redirect_to root_path if @offer.nil?
    end
end