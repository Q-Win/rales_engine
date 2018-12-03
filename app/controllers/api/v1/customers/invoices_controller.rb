class Api::V1::Customers::InvoicesController < ApplicationController
  def index
    customer_id = (params[:customer_id])
    render json: Customer.find(customer_id).invoices
  end
end
