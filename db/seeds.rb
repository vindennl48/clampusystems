# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PaymentType.create([
  { name: "Amazon" },
  { name: "Check" },
  { name: "COD" },
  { name: "Credit Card" },
  { name: "Terms" },
  { name: "PayPal" },
  { name: "Wire" },
])

puts "----> PaymentType entries complete."


ShippingCompany.create([
  { name: "UPS" },
  { name: "USPS" },
  { name: "FedEX" },
  { name: "DHL" },
  { name: "R&L Carriers" },
  { name: "Local Pickup" },
])

puts "----> ShippingCompany entries complete."


puts "####> Seeding complete!"
