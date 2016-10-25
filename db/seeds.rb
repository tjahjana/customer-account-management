# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all
Customer.create(email: "cust1@mail.com", password: "123", password_confirmation: "123", name:"Bee Jay", address:"Been Street 30", tax: "35820347")
Customer.create(email: "cust2@mail.com", password: "456", password_confirmation: "456", name:"Cee Joy", address:"Bonn Street 25", tax: "49377028")
Customer.create(email: "cust3@mail.com", password: "789", password_confirmation: "789", name:"Dee Jane", address:"Fore Street 9", tax: "17448392")

Contract.delete_all
Contract.create(name: "Contract 1", period: 31, interval: 7, fee: 100, date: Date.today, customer_id: 1)
Contract.create(name: "Contract 2", period: 365, interval: 7, fee: 105, date: Date.today, customer_id: 1)
Contract.create(name: "Contract 3", period: 31, interval: 14, fee: 120, date: Date.today, customer_id: 2)

Product.delete_all
Product.create(name: "Product 1", fee: 30, contract_id: 1)
Product.create(name: "Product 2", fee: 10, contract_id: 2)
Product.create(name: "Product 3", fee: 17, contract_id: 3)

Feature.delete_all
Feature.create(name: "Feature 1", fee: 5)
Feature.create(name: "Feature 2", fee: 2)
Feature.create(name: "Feature 3", fee: 2)