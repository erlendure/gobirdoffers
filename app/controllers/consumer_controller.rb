class ConsumerController < ApplicationController
  def show
    @par_offer_id = params[:format]
  	if @par_offer_id.nil?
  	  @featured = Offer.first
  	  @offers = Offer.limit(12).offset(1)
	else 
  	  @featured = Offer.find(@par_offer_id) 		
  	  @offers = Offer.where('id != ?',@par_offer_id)
  	end

  	@bullets = BulletPoint.find_all_by_offer_id(@featured.id)
  end  
end
 