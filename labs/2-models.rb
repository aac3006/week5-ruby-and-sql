# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
#SELECT COUNT(*) FROM companies;
puts "salespeople: #{Salesperson.all.count}"

salesperson = Salesperson.new
new_salesperson ["first_name"] = "Alicia"
new_salesperson ["last_name"] = "Alessandri"
new_salesperson ["email"] = "alicia.alessandri@gmail.com"
nes_salesperson.save

salesperson = Salesperson.new
new_salesperson ["first_name"] = "Martin"
new_salesperson ["last_name"] = "Errazuriz"
new_salesperson ["mail"] = "errazurizmartin@gmail.com"
nes_salesperson.save

# 3. write code to display how many salespeople rows are in the database
puts "There are #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
alicia = Salesperson.find_by({"first_name" => "Alicia", "last_name" => "Alessandri"})
puts alicia.inspect

alicia["mail"] = "aac@gmail.com"
alicia.save
puts alicia.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
