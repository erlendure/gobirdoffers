class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
  end

  def destroy
  end

  def index
  end

  private
    def correct_user
      @offer = current_user.offers.find_by_id(params[:id])
      redirect_to root_path if @offer.nil?
    end
end