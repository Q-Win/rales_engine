class TransactionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :result, :credit_card_expiration_date,
            :credit_card_number
end
