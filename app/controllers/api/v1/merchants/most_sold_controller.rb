class Api::V1::Merchants::MostSoldController < ApplicationController

  def index
    render json: Merchant.most_sold(merchant_params[:quantity])
  end


  private

  def merchant_params
    params.permit(:quantity)
  end

end
