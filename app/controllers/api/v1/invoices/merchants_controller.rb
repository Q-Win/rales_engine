class Api::V1::Invoices::MerchantsController < ApplicationController
  def show
    render json: Merchant.joins(:invoices).where('invoices.id = ?', params[:invoice_id])
  end

end
