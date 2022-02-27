# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are #{Company.all.count} companies." 

# 2. create new companies
attributes = {
    name: "Apple, Inc.",
    url: "https://apple.com",
    city: "Cupertino",
    state: "CA"
}
apple = Company.new(attributes)
apple.save

puts "There are #{Company.all.count} companies."

amazon = Company.new({ name: "Amazon.com, Inc.", url: "https://amazon.com", city: "Seattle", state: "WA"})
amazon.save

puts "There are #{Company.all.count} companies."

tesla = Company.new
tesla.name = "Tesla, Inc."
tesla.url = "https://tesla.com"
tesla.city = "Palo Alto"
tesla.state = "CA"
tesla.save

puts "There are #{Company.all.count} companies."

company = Company.where({ state: "CA", name: "Apple, Inc." })[0]
puts company

puts company.name
puts company.url
puts "Visit the #{company.name} website at #{company.url}"

# 3. query companies table
# 4. read column values from row
# 5. update attribute value

company.slogan = "Think Different."
company.save
puts company.inspect

company = Company.new({ name: "Tesler" })
company.save

tesler = Company.where({ name: "Tesler" })[0]
tesler.destroy

