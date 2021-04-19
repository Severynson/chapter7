# mush = {1 => "one", "two" => false, :three => 3.05}
# puts mush[1]
# puts mush[:three]
# p mush["two"]
#
# name = "Marko"
# puts "#{name} has don #{mush["two"]} choice!"
# if name == "Donald" and mush["two"] == false
# puts "He will die!!!!!!!"
# elsif mush["two"] == true
#   puts "Ok, I will stay him alive..."
# elsif
# puts "Ohhh, ok, I will stay him alive, because name is not \"Donald\"(((("
# end

#########################################################################################

# my_hash = {"one" => "two", :three => "four", 5 => "six"}
# puts my_hash[5]
# puts my_hash["one"]
# puts my_hash[:three]
# my_hash["seven"] = 8
# puts my_hash["seven"]

#########################################################################################

# protons = {"H" => 1, "Li" => 3, "Ne" => 10}
# puts protons.class
# puts protons.inspect
# puts protons.length
# puts protons.has_key?("Ne")
# puts protons.has_value?(10)
# p protons.keys
# p protons.values
#
# protons.each do |element, count|
#   puts "#{element}: #{count}"
# end

##########################################################################################

# p protons = { "He" => 2}
# p protons["He"]
# p protons["C"] = 6
# p protons["C"]
# p protons.has_key?("C")
# p protons.has_value?(119)
# p protons.keys
# p protons.values
# p protons.merge ({ "C" => 0, "Uh" => 147.2})

##########################################################################################

# lines = []
# File.open"votes.txt" do |file|
#   lines = file.readlines
# end
#
# votes = {}
#
# lines.each do |line|
#   name = line.chomp
#   if votes[name] != nil
#     votes[name] += 1
#   else
#     votes[name] = 1
#   end
# end
# p votes

##########################################################################################

# lines = []
# File.open"votes.txt" do |file|
#   lines = file.readlines
# end
#
# votes = {}
#
# lines.each do |line|
#   name = line.chomp
#   if votes[name]
#     votes[name] += 1
#   else
#     votes[name] = 1
#   end
# end
# p votes

###########################################################################################

# school = {
#   "Simone" => "here",
#   "Jeanie" => "here"
# }
# names = ["Simone", "Ferriss", "Jeanie", "Cameron"]
# names.each do |name|
#   if school[name]
#     puts "#{name} is present"
#   else
#     puts "#{name} is absent"
#   end
# end

###########################################################################################

# votes = Hash.new("0- no votes")
# votes["Amber Graham"] = 1
# p votes["Amber Graham"]
# p votes["Brian Martin"]

###########################################################################################

# lines = []
# File.open("votes.txt") do |file|
#   lines = file.readlines
# end
#
# votes = Hash.new(0)
#
# lines.each do |line|
#   name = line.chomp
#   name.upcase!
#   votes[name] += 1
# end
#
# votes.each do |name, count|
#   puts "#{name}: #{count}"
# end

############################################################################################

# class Candidate
#   attr_accessor :name, :age, :occupation, :hobby, :birthplace
#     def initialize(name, age, occupation, hobby, birthplace)
#       self.name = name
#         self.age = age
#       self.occupation = occupation
#       self.hobby = hobby
#       self.birthplace = birthplace
#     end
# end
# def print_summary(candidate)
#   puts "Candidate: #{candidate.name}"
#   puts "Age: #{candidate.age}"
#   puts "Occupation: #{candidate.occupation}"
#   puts "Hobby: #{candidate.hobby}"
#   puts "Birthplace: #{candidate.birthplace}"
# end
#
# candidate = Candidate.new("Carl Barnes", 666, "Attorney", nil, "Miami")
# print_summary(candidate)

############################################################################################

# def area(options)
#   options[:length] * options[:width]
# end
# puts area ({:length => 2, :width => 4})

############################################################################################

# class Candidate
#   attr_accessor :name, :age, :occupation, :hobby, :birthplace
#   def initialize(name, options = {})
#     self.name = name
#     self.age = options[:age]
#     self.occupation = options[:occupation]
#     self.hobby = options[:hobby]
#     self.birthplace = options[:birthplace]
#   end
# end
#
# candidate = Candidate.new("Amy Nguyen", {:age => 37, :occupation => "Engineer", :hobby => "Lacrosse", :birthplace => "Seattle"})
# candidate1 = Candidate.new("Dmitriy Russianobull", {:age => 30, :occupation => "Blackworker", :birthplace => "Moscow"})
# candidate2 = Candidate.new("Gopar' Petro", :occupation => "Thief", :hobby => "Beer", :age => 21, :birthplace => "Far_village")
#
# p candidate
# p candidate1
# p candidate2
# p Candidate.new("Amy Nguyen", occupation: "Engineer")
# p Candidate.new("Emil Nagyev", occupation: "Not an engineer")

###########################################################################################

# def volume (options)
#   result = options[:depth] * options[:height] * options[:width]
#   puts "Volume is #{result}"
# end
# volume(depth: 2.5, height: 5, width: 10)

###########################################################################################

# def welcome(greeting: "Welcome", name: nil)
#   puts "#{greeting}, #{name}!"
# end
# puts welcome

###########################################################################################

# class Candidate
#   attr_accessor :name, :age, :occupation, :hobby, :birthplace
#   def initialize(name, age: nil, occupation: nil, hobby: nil, birthplace: "Sleepy Creek")
#     self.name = name
#     self.age = age
#     self.occupation = occupation
#     self.hobby = hobby
#     self.birthplace = birthplace
#   end
# end
#
# p Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer")
# p Candidate.new("Amy Nguyen", occupaiton: "Engineer")

############################################################################################

# def create(options = {})
#   puts "Creating #{options[:database]} for owner #{options[:user]}..."
# end
# def connect(database:, host: "localhost", port: 3306, user: "root")
#   puts "Connecting to #{database} on #{host} port #{port} as #{user}..."
# end
#
# create(database: "catalog", user: "carl")
# create(user: "carl")
# create
# connect(database: "catalog")
# #mistake#    connect(database: "catalog", password: "1234")
# #mistake#    connect(user: "carl")