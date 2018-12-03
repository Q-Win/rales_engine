require 'pry'

class Api::V1::Merchants::MostRevenueController < ApplicationController

  def index
    # binding.pry
    render json: Merchant.most_revenue(merchant_params[:quantity])
  end


  private

  def merchant_params
    params.permit(:quantity)
  end

end
