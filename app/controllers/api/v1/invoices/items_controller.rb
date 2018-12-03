class Api::V1::Invoices::ItemsController < ApplicationController
  def index
    render json: Item.joins(:invoice_items)
                .joins(:invoice_items => :invoice)
                .where('invoices.id = ?', params[:invoice_id])
  end

end
