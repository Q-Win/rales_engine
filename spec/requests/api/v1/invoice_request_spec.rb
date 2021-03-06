require 'rails_helper'

describe "invoices API" do
  it "sends a list of invoices" do
    merchant = create(:merchant)
    customer = create(:customer)
    create_list(:item,
                3,
                merchant_id: merchant.id)
    create(:invoice,merchant_id: merchant.id,
            customer_id: customer.id )
    create(:invoice,merchant_id: merchant.id,
            customer_id: customer.id )

    get '/api/v1/invoices'

    expect(response).to be_successful

    invoices = JSON.parse(response.body)

    expect(invoices["data"].count).to eq(2)
  end
end
