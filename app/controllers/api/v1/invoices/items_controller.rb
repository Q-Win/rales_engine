class Api::V1::Invoices::ItemsController < ApplicationController
  def index
    #not working yet
    render json: Item.joins(:invoice_items)
                .joins("join invoices on invoices.id = invoice_items.invoice_id ")
                .where(id: params[:invoice_id])
  end

end
