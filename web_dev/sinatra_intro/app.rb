# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
#get '/' do
#  "#{params[:name]} is #{params[:age]} years old."
#end

# write a GET route with
# route parameters
#localhost:9393/about/Jen
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


# RELEASE 0

# 1
# URL => http://localhost:9393/contact/123_Main_St
get '/contact/:info' do
  info = params[:info]
  "This users contact information is #{info}"
end

# 2
# URL => http://localhost:9393/great_job/?name=Tove
# URL => http://localhost:9393/great_job/
get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# 3
# URL => http://localhost:9393/1/+/2
get '/:num1/+/:num2' do
  x = params[:num1].to_i
  y = params[:num2].to_i
  answer =  x + y
  "#{x} + #{y} = #{answer}"
end

#### 4 (Bonus)
#### URL => 
###get '/students/:name' do
###  name = db.execute("SELECT * FROM students WHERE name =?", [params[:name]])
###  n = name.to_s
###  "Name: #{students['n']}"
###end

# RELEASE 1
=begin
1. Is Sinatra the only web app library in Ruby? What are some others?
it is not; other web app frameworks for ruby are: ruby on rails, merb, nitro, camping

2. Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
nope. heroku, datamapper, activerecord are just a few other database options.

3. What is meant by the term web stack?
web stack is the collection of software required for web development.
contains an operating system, programming language, database software and web server.
=end


