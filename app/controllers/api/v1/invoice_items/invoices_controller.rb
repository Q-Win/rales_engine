
class Api::V1::InvoiceItems::InvoicesController < ApplicationController
  def index
    invoice_id = InvoiceItem.find(params[:invoice_item_id].to_i).invoice_id
    render json: Invoice.find(invoice_id)
  end

end
