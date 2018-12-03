class Api::V1::Transactions::RandomController < ApplicationController

  def show
    offset = rand(Transaction.count)
    render json: Transaction.find(offset)
  end

end
