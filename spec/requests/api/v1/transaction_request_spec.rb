require 'rails_helper'

describe "transactions API" do
  it "sends a list of transactions" do
    customer = create(:customer)
    merchant = create(:merchant)
    create_list(:item,
                3,
                merchant_id: merchant.id)
    invoice = create(:invoice,merchant_id: merchant.id,
            customer_id: customer.id )
    create_list(:transaction,
                3,
                invoice_id: invoice.id)

    get '/api/v1/transactions'

    expect(response).to be_successful

    transactions = JSON.parse(response.body)

    expect(transactions["data"].count).to eq(3)
  end
end
