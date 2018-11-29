require 'rails_helper'

RSpec.describe Item, type: :model do

  describe 'Relationships' do
    it {should belong_to(:merchant)}
    it {should have_many(:invoice_items)}
    it {should have_many(:invoices).through(:invoice_items)}
  end

  describe 'Class methods' do
  	xit "can return the most popular items by number sold" do
  		custy = create(:customer)
  		merch = create(:merchant)
  		item_1, item_2, item_3, item_4, item_5 = create_list(:item, 5, merchant_id: merch.id)
  		inv_1, inv_2, inv_3, inv_4, inv_5 = create_list(:invoice, 5)
  		tran_1 = create(:transaction, invoice_id: inv_1.id, result: "success")
  		tran_2 = create(:transaction, invoice_id: inv_2.id, result: "success")
  		tran_3 = create(:transaction, invoice_id: inv_3.id, result: "success")
  		tran_4 = create(:transaction, invoice_id: inv_4.id, result: "success")
  		tran_5 = create(:transaction, invoice_id: inv_5.id, result: "failed")
  		inv_it_1 = create(:invoice_item, item_id: item_1.id, quantity: 5, invoice_id: 1)
  		inv_it_2 = create(:invoice_item, item_id: item_2.id, quantity: 10, invoice_id: 2)
  		inv_it_3 = create(:invoice_item, item_id: item_3.id, quantity: 15, invoice_id: 3)
  		inv_it_4 = create(:invoice_item, item_id: item_4.id, quantity: 20, invoice_id: 4)
  		inv_it_5 = create(:invoice_item, item_id: item_5.id, quantity: 25, invoice_id: 5)

  		expect(Item.most_sold(1)).to eq([item_4])
    end
  end
end
