print "Name: "
name = gets.chomp
print "Lastname: "
last_name = gets.chomp
print "Company: "
company = gets.chomp

#email = name + "." + last_name + "@" + company + ".com"

email = ""
#for double names cases
email << name.downcase.split.join(".")
email << "."
email << last_name.downcase
email << "@"
email << company.downcase.split.join
email << ".com"

puts email