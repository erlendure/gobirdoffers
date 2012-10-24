class OffersController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def new
    @offer = Offer.new
  end  

  def create
    @offer = current_user.offers.build(params[:offer])
    #@offer = Offer.new(params[:offer])
    if @offer.save
      flash[:success] = "Offer created!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
  end

  def index
    @offers = Offer.paginate(page: params[:page])    
  end

  private
    def correct_user
      @offer = current_user.offers.find_by_id(params[:id])
      redirect_to root_path if @offer.nil?
    end
end