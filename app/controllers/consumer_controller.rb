class ConsumerController < ApplicationController
  def show
    @par_offer_id = params[:format]
	@all = 0
  	if @par_offer_id.nil?
  	  @featured = Offer.first
  	  @offers = Offer.limit(12).offset(1)
	elsif @par_offer_id != '0'
  	  @featured = Offer.find(@par_offer_id) 		
  	  @offers = Offer.where('id != ?',@par_offer_id)
	else 
  	  @featured = Offer.first
  	  @offers = Offer.limit(60)
	  @all = 1
  	end

  	@bullets = BulletPoint.find_all_by_offer_id(@featured.id)
  end  
end
 