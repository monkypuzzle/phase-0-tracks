# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  key = params[:key]
  value = params[:value]
  students = db.execute("SELECT * FROM students")
  response = ""
  if key && value
    students.each do |student|
      if student[key] == value
        response << "#{student['name']}<br>"
      end
    end
  else
    response = "Add a key and a value as a query parameter to display all students with that key!"
  end
  response
end

# write a GET route with
# route parameters
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

# write a GET route /contact that displays an address

get '/contact' do
    "5252 Wayward Lane<br>
    Somewhere, XY
    United States"
end

# write a GET route that takes name as query parameter

get '/good_job' do
  person = params[:person]
  if person
    "Good job, #{person}!"
  else
    "Good job!"
  end
end

# write a GET route that adds two numbers provided as route parameters

get '/sum/:addend1/:addend2' do
  addend1 = params[:addend1].to_i
  addend2 = params[:addend2].to_i
  sum = addend1 + addend2
  "#{sum}"
end


