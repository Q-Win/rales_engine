class Api::V1::Customers::RandomController < ApplicationController

  def show
    offset = rand(Customer.count)
    render json: Customer.find(offset)
  end

end
