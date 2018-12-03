class Api::V1::InvoiceItems::RandomController < ApplicationController

  def show
    offset = rand(InvoiceItem.count)
    render json: InvoiceItem.find(offset)
  end

end
