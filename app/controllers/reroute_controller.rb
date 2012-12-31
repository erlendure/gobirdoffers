class RerouteController < ApplicationController
  def show
    @id  = params[:id]
	@url = params[:url]
	
	Offer.increment_counter(:visit_count, @id)
	
    redirect_to @url
  end  
end
 