class Api::V1::Customers::TransactionsController < ApplicationController
  def index
    customer_id = (params[:customer_id].to_i)
  end
end
