
class Api::V1::Items::MerchantsController < ApplicationController
  def index
    merchant_id = Item.find(params[:item_id].to_i).merchant_id
    render json: Merchant.find(merchant_id)
  end
end
