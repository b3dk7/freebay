require 'will_paginate/array'

class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end
  def show
    @offer = Offer.find(params[:id])
    if @offer.expiration.nil? == false
      if @offer.expiration<Date.today
        destroy()
      end
    end
  end
  def new
    @offer= Offer.new
    @offer.textcaptcha
  end
  def edit
    
    @offer = Offer.find(params[:id])
    @offer.textcaptcha
  end
  def create
    @offer = Offer.new(offer_params)    
    if @offer.save
      redirect_to @offer
    else
      render 'new'
    end
  end
  def update    
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      if @offer.description == "destroy"
        destroy()
      else
      redirect_to @offer
      end
    else
      render 'edit'
    end

  end
  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy

    redirect_to offers_path
  end

private
  def offer_params
    params.require(:offer).permit(:title, :description, :tag_list, :location_list, :image, :contact_information, :expiration, :textcaptcha_key, :textcaptcha_answer)
  end
end
