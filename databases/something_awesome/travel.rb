require 'sqlite3'

trip_table = <<-SQL
  CREATE TABLE IF NOT EXISTS trip(
    id INTEGER PRIMARY KEY,
    traveling_to VARCHAR(255),
    leave_date DATETIME,
    return_date DATETIME,
    todo_id INT,
    packing_list_id INT,
    FOREIGN KEY (todo_id) REFERENCES todo_list(id),
    FOREIGN KEY (packing_list_id) REFERENCES packing_list(id)
  )
SQL

todo_list_table = <<-SQL
  CREATE TABLE IF NOT EXISTS todo_list(
    id INTEGER PRIMARY KEY,
    todo_items VARCHAR(255),
    trip_id INT
  )
SQL

packing_list_table = <<-SQL
  CREATE TABLE IF NOT EXISTS packing_list(
    id INTEGER PRIMARY KEY,
    item_description VARCHAR(255),
    trip_id INT
  )
SQL

def create_trip(db, traveling_to, leave_date, return_date)
  db.execute("INSERT INTO trip (traveling_to, leave_date, return_date) VALUES (?, ?, ?)", [traveling_to, leave_date, return_date])
end

def create_trip_update
  loop do
    puts "What would you like to change? Enter: trip location, leaving date, return date or type 'done' when finished."
    update = gets.chomp.downcase
      if update == "done"
        break
      elsif update == "trip location"
        puts "Where are you traveling to?"
        traveling_to = gets.chomp
      elsif update == "outbound flight"
        puts "Outbound flight number?"
        outbound_flight = gets.to_i
      elsif update == "return date"
        puts "When do you have to come home? (MM-DD-YY)"
        return_date = gets.chomp
      else
        puts "I didn't quite understand that..."
        puts "Enter: trip location, leaving date, return date or type 'done' when finished."
      end
  end
end

def create_todo_list(db, todo_items)
  db.execute("INSERT INTO todo_list (todo_items) VALUES (?)", [todo_items])
end

def create_packing_list(db, item_description)
  db.execute("INSERT INTO packing_list (item_description) VALUES (?)", [item_description])
end


# USER INTERFACE

# Create trip
puts "Welcome to the Travel Assistant!"
puts "We're here to help you prepare for your upcoming trip by keeping track of trip details, todo items and your packing list."
db = SQLite3::Database.new("travel.db")
db.results_as_hash = true

puts "\nLet's get started!" 
db.execute(trip_table)

puts "\nWhere are you traveling to?"
traveling_to = gets.chomp

puts "\nWhen are you leaving? (MM-DD-YY)"
leave_date = gets.chomp

puts "\nWhen do you have to come home? (MM-DD-YY)"
return_date = gets.chomp

puts "\nSo, you're leaving for #{traveling_to.capitalize} #{leave_date} and returning #{return_date}."
puts "Is this correct? (yes/no)"
correct_info = gets.chomp.downcase

  if correct_info == "yes"
    create_trip(db, traveling_to, leave_date, return_date)
  elsif correct_info == "no"
    create_trip_update
  else
    puts "I didn't understand that... Is the above information correct? (yes/no)" 
  end

# Create todo list
puts "\nNow, do you have any todo items you'd like to add? (yes/no)"
todo_input = gets.chomp.downcase
todo_arr = []

  if todo_input == "no"
    puts "Alright, what's next..."
  elsif todo_input == "yes"
    db.execute(todo_list_table)
    puts "\nWhat do you need added to the todo list? (one at a time please!)"
    puts "Type 'done' when you are finished."
    todo_items = gets.chomp
    create_todo_list(db, todo_items)
    loop do 
      puts "Anything else?"
      todo_items = gets.chomp
      break if todo_items == "done"
      todo_arr << todo_items
      create_todo_list(db, todo_items)
    end
  else
    puts "Hum... I didn't understand that. Anything you want to add to your todo list? (yes/no)"
  end

# Create packing list
puts "\nWould you like to get a packing list together? (yes/no)"
packing_input = gets.chomp.downcase
packing_arr = []

  if packing_input == "no"
    puts "No problem, moving on..."
  elsif packing_input == "yes"
    db.execute(packing_list_table)
    puts "\nSo, what all are you going to take? (one at a time please!)"
    puts "Type 'done' when you are finished."
    item_description = gets.chomp
    create_packing_list(db, item_description)
      loop do 
        puts "What else?"
        item_description = gets.chomp
        break if item_description == "done"
        packing_arr << item_description
        create_packing_list(db, item_description)
      end
  else
    puts "I'm not sure about that. Anything you want to add to your packing list? (yes/no)"
  end

# Exit message
puts "\nAwesome! We've got all the information you entered entered."
