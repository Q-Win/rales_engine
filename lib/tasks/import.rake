require "csv"

namespace :import do

  task merchants: :environment do
    file_name = './db/data/merchants.csv'
    CSV.foreach(file_name, headers: true) do |row|
      Merchant.create(row.to_h)
    end
  end

  task items: :environment do
    file_name = './db/data/items.csv'
    CSV.foreach(file_name, headers: true) do |row|
      Item.create(row.to_h)
    end
  end

  task customers: :environment do
    file_name = './db/data/customers.csv'
    CSV.foreach(file_name, headers: true) do |row|
      Customer.create(row.to_h)
    end
  end

  task invoices: :environment do
    file_name = './db/data/invoices.csv'
    CSV.foreach(file_name, headers: true) do |row|
      Invoice.create(row.to_h)
    end
  end

  task invoiceitems: :environment do
    file_name = './db/data/invoice_items.csv'
    CSV.foreach(file_name, headers: true) do |row|
      InvoiceItem.create(row.to_h)
    end
  end

  task transactions: :environment do
    file_name = './db/data/transactions.csv'
    CSV.foreach(file_name, headers: true) do |row|
      Transaction.create(row.to_h)
    end
  end

end
