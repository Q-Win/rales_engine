class Merchant < ApplicationRecord
  has_many :invoices
  has_many :invoice_items, through: :invoices
  has_many :items
  has_many :transactions, through: :invoices

  def self.most_revenue(num)
   Merchant.unscoped.joins(invoices: [:invoice_items, :transactions]).select("merchants.*, SUM(invoice_items.quantity * invoice_items.unit_price) AS revenue").merge(Transaction.unscoped.successful).group(:id).order('revenue DESC').limit(num)
  end

  def self.most_sold(num)
    Merchant.unscoped.joins(invoices: [:invoice_items, :transactions]).select("merchants.*, SUM(invoice_items.quantity) AS number_sold").merge(Transaction.unscoped.successful).group(:id).order('number_sold DESC').limit(num)
  end

end
