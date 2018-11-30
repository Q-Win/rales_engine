
class Api::V1::Transactions::InvoicesController < ApplicationController
  def index
    invoice_id = Transaction.find(params[:transaction_id].to_i).invoice_id
    render json: Invoice.find(invoice_id)
  end
end
