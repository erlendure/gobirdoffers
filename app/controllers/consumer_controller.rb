class ConsumerController < ApplicationController
  def show
  	@offers = Offer.all
  end  
end
