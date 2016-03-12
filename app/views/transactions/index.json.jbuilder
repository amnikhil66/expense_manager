json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :payer, :payee, :notes, :modeOfPayment, :paymentType, :amount
  json.url transaction_url(transaction, format: :json)
end
