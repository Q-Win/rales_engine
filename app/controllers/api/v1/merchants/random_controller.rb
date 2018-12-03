require 'pry'

class Api::V1::Merchants::RandomController < ApplicationController

  def show
    offset = rand(Merchant.count)
    render json: Merchant.find(offset)
  end

end
