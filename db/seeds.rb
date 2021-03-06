# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Product.delete_all
Product.create(
               :title => 'Programming Ruby 1.9' ,
               :description =>
               %{<p>
                   Ruby is the fastest growing and most exciting dynamic language out
                   there. If you need to get working programs delivered fast, you should
                   add Ruby to your toolbox.
               </p>},
               :image_url => 'ruby.jpg' ,
               :price => 49.50)

Product.create(
               :title => 'Debug it!',
               :description => 'This is a debuger book.',
               :image_url => 'debug.jpg',
               :price => 56.00)

Product.create(
               :title => 'Rails!',
               :description => 'This is a rails book.',
               :image_url => 'rails.png',
               :price => 100.00)

TypePayment.delete_all
# Seed for create the pay types.
TypePayment.create(:name => 'Check')
TypePayment.create(:name => 'Credit Card')
TypePayment.create(:name => 'Pay Pal')

User.delete_all
# Create de admin user
User.create(name: "admin", hashed_password: "admin", salt: "admin")
