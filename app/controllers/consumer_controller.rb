class ConsumerController < ApplicationController
  def show
  	@offers = Offer.all
  	#@bullets = BulletPoint.all
  	@bullets = BulletPoint.find_all_by_offer_id(@offers[0].id)
  end  
end
