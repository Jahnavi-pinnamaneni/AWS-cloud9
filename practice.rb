=begin
puts "Hello world"

puts "string " + "concatenation"

name = "Ruby"
puts "Hello, This is #{name}"

puts "Ruby on Rails".length
puts "ruby on rails".capitalize

puts "hello "*3


#if condition
username="jahnavi"
if username=="jahnavi"
    puts "Hi! Welcome #{username}"
else
    puts "Sign up"
end

password="pin"

puts (username=="jahnavi")&&(password=="pin")?"Welcome.. enjoy watching your movie":"Kindly Sign up"



#array

a=["Adam","Jack",1,2,[3,4]]
a << "5"
print a
print "\n"
a.push(6)
print a
print "\n"
a.unshift("Anna")
print a
print "\n"
a.shift
print a
print "\n"
a.pop
print a
print "\n"
puts a[-1]


#Hashes

details= {:name => "Jahnavi Pinnamaneni", :dob => "20-8-1995", :roll_no =>34}

puts details[:roll_no]
puts details.keys



#interators

scores=[30,100,50,70,80,90,60]

scores.each do |x|
    if x>60
        puts "score: #{x}"
    end
end

#shorthand
 scores.each { |x| puts "score: #{x}"}


scores.each do |x|
    x+=10
    puts x
end


#from this example we see that .each function does not create a new array...For this to happen we use .map
scores=[30,100,50,70,80,90,60]
upgraded_scores=scores.map do |x|
    x+10
end

print scores
print "\n"
print upgraded_scores
print "\n"


#to use iterators in Hashes

hashes= { k1: "v1",k2: "v2"}
hashes.each do |key,value|
    puts "#{key}:#{value}"
end


#methods
def say_hello
    puts "Hello, Welcome to Aktivolt celtek!"
end

say_hello


def power(base,exponent)
    ans=1;
    exponent.times do
        ans = ans*base
    end
    #ans
    puts ans
end

#puts power(2,3)
power(2,3)
=end
#classes

class User
    attr_accessor :fav_color
    def initialize(fname,lname)
        @first_name = fname
        @last_name = lname
    end
    def post_tweet
        puts "#{@first_name} #{@last_name} posted a tweet"
    end
end

user1=User.new("Dolly","Pinnamaneni")   #creating a new instance

user1.post_tweet
user1.fav_color="Black"
puts user1.fav_color

#inheritance
class Admin < User
    def post_tweet
        super
        puts "I'am an admin user";
    end
end

admin_user = Admin.new("Jahnavi","Pinnamaneni")
puts admin_user.inspect
admin_user.post_tweet
