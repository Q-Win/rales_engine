class Api::V1::InvoiceItems::ItemsController < ApplicationController
  def index
    invoice_id = InvoiceItem.find(params[:invoice_item_id].to_i).item_id
    render json: Item.find(invoice_id)
  end

end
