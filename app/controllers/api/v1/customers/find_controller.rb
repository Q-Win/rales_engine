class Api::V1::InvoiceItems::FindController < ApplicationController

  def index
    render json: InvoiceItem.where(invoice_item_params)
  end

  def show
    render json: InvoiceItem.find_by(invoice_item_params)
  end

  private

  def invoice_item_params
    params.permit(:id, :first_name, :last_name, :created_at, :updated_at)
  end

end
