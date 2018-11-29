require 'rails_helper'

describe "customers API" do
  it "sends a list of customers" do
    customers = create_list(:customer,3)

    get '/api/v1/customers'

    expect(response).to be_successful

    customers = JSON.parse(response.body)

    expect(customers["data"].count).to eq(3)
  end

  xit "sends an indivdual customer" do
    id = create(:customer).id

    get "/api/v1/customers/#{id}"

    customer = JSON.parse(response.body)
    expect(response).to be_successful
    expect(customer["id"]).to eq(id)
  end
end
