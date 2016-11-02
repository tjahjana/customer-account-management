# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all
customer1 = Customer.create(email: "cust1@mail.com", name:"Bee Jay", address:"Been Street 30", tax: "35820347")
customer2 = Customer.create(email: "cust2@mail.com", name:"Cee Joy", address:"Bonn Street 25", tax: "49377028")
customer3 = Customer.create(email: "cust3@mail.com", name:"Dee Jane", address:"Fore Street 9", tax: "17448392")

Contract.delete_all
contract1 = customer1.contracts.create(name: "Contract 1", period: 31, interval: 7, fee: 100, date: Date.today)
contract2 = customer2.contracts.create(name: "Contract 2", period: 365, interval: 7, fee: 105, date: Date.today)
contract3 = customer3.contracts.create(name: "Contract 3", period: 31, interval: 14, fee: 120, date: Date.today)

Product.delete_all
product1 = contract1.products.create(name: "Product 1", fee: 30)
product2 = contract2.products.create(name: "Product 2", fee: 10)
product3 = contract3.products.create(name: "Product 3", fee: 17)

Feature.delete_all
product1.features.create(name: "Feature 1", fee: 5)
product2.features.create(name: "Feature 2", fee: 2)
product3.features.create(name: "Feature 3", fee: 2)