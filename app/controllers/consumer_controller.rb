class ConsumerController < ApplicationController
  def show
    @par_offer_id = params[:format]
	@all = 0
  	if @par_offer_id.nil?
  	  @featured = Offer.limit(1).find_by_active(true)
  	  @offers = Offer.limit(12).offset(1).where('active = ?',true)
	elsif @par_offer_id != '0'
  	  @featured = Offer.find(@par_offer_id)
  	  @offers = Offer.where('id != ? AND active = ?',@par_offer_id, true)
	else 
  	  @featured = Offer.limit(1).find_by_active(true)
  	  @offers = Offer.limit(60).where('active = ?',true)
	  @all = 1
  	end

  	@bullets = BulletPoint.find_all_by_offer_id(@featured.id)
  end  
end
 