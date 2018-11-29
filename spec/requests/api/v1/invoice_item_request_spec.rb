require 'rails_helper'

describe "invoice_items API" do
  it "sends a list of invoice_items" do
    merchant = create(:merchant)
    customer = create(:customer)
    item = create(:item, merchant_id: merchant.id)
    create_list(:item,
                3,
                merchant_id: merchant.id)
    invoice = create(:invoice,merchant_id: merchant.id,
            customer_id: customer.id )
    create(:invoice_item,invoice_id: invoice.id,
            item_id: item.id )

    create(:invoice_item,invoice_id: invoice.id,
            item_id: item.id )

    get '/api/v1/invoice_items'

    expect(response).to be_successful

    invoice_items = JSON.parse(response.body)

    expect(invoice_items["data"].count).to eq(2)
  end
end
