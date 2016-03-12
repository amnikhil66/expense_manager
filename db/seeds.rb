# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


transactionsData = ActiveSupport::JSON.decode(File.read('db/data/transactions.json'))

transactionsData.each do |td|
	Transaction.create!(td)
end