class Api::V1::Invoices::RandomController < ApplicationController

  def show
    offset = rand(Invoice.count)
    render json: Invoice.find(offset)
  end

end
