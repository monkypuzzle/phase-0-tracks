require 'sqlite3'
require 'faker'

# =========================================================
# ============={ GENERATE DATABASE w/ TABLES }=============
# =========================================================

db = SQLite3::Database.new("todolist.db")

sql_create_table_tasklist = <<-SQL
  CREATE TABLE IF NOT EXISTS tasklist (
  id INTEGER PRIMARY KEY,
  priority INTEGER,
  task VARCHAR(255),
  completed BOOLEAN DEFAULT 'false',
  FOREIGN KEY (priority) REFERENCES priorities(id)
  )
SQL

sql_create_table_priorities = <<-SQL
  CREATE TABLE IF NOT EXISTS priorities (
  id INTEGER PRIMARY KEY,
  priority VARCHAR(255) UNIQUE
  )
SQL

sql_populate_table_priorities = <<-SQL
  INSERT OR IGNORE INTO priorities(priority)
    VALUES
    ("Highest"),
    ("High"),
    ("Medium"),
    ("Low"),
    ("Lowest")
SQL

db.execute(sql_create_table_tasklist)
db.execute(sql_create_table_priorities)
db.execute(sql_populate_table_priorities)


# =========================================================
# ================{ SET ACCESS VARIABLES }=================
# =========================================================

$todolist = db.execute("SELECT * FROM tasklist WHERE completed = 'false'").sort_by{|task| task[1]}
$priorities = db.execute("SELECT * FROM priorities")
$completedtasks = db.execute("SELECT * FROM tasklist WHERE completed = 'true'")


# =========================================================
# ===================={ MODIFY TABLES }====================
# =========================================================

module DATABASE

  def self.add_task (db, priority, task)
    db.execute("INSERT INTO tasklist (priority, task) VALUES (?, ?)", [priority, task])
  end

  def self.checkoff_task (db, task_id)
    db.execute("UPDATE tasklist SET completed = 'true' WHERE id = ?", [task_id.to_i])
  end

  def self.refresh_access_variables(db)
    $todolist = db.execute("SELECT * FROM tasklist WHERE completed = 'false'").sort_by{|task| task[1]}
    $priorities = db.execute("SELECT * FROM priorities")
    $completedtasks = db.execute("SELECT * FROM tasklist WHERE completed = 'true'")
  end

end


# =========================================================
# ======================{ INTERFACE }======================
# =========================================================

def interface_add_task(db)
  puts "\nWhat task would you like to add?"
  task = gets.chomp
  puts "What level of priority is it, 1-5? (1 being highest)"
  priority = gets.chomp.to_i
  DATABASE.add_task(db, priority, task)
  puts "'#{task}' has been added!"
  DATABASE.refresh_access_variables(db)
end

def interface_checkoff_task(db, todolist)
  yes_no = nil
  until yes_no == 'y'
    puts "Which of the below tasks would you like to check off? Please enter the # next to the task."
    print_todolist_w_idx(todolist)
    item_choice = gets.chomp.to_i
    puts "You chose: '#{todolist[item_choice][2]}'\nIs that correct? y/n"
    yes_no = gets.chomp
  end
  db.execute("UPDATE tasklist SET completed = 'true' WHERE task = ?", [todolist[item_choice][2]])
  puts "'#{todolist[item_choice][2]}' has been checked off.\n"
  DATABASE.refresh_access_variables(db)
end

def print_todolist(todolist)
  puts "\n====================TO DO LIST===================="
  todolist.each do |task|
      puts "[ ] #{task[2]}"
  end
  puts "==================================================\n\n"
end

def print_todolist_w_idx(todolist)
  puts "\n====================TO DO LIST===================="
  todolist.each do |task|
      puts "#{todolist.index(task)} - [ ] #{task[2]}"
  end
  puts "==================================================\n\n"
end

def print_completedtasks(completedtasks)
  puts "\n==================COMPLETED TASKS=================="
  completedtasks.each do |task|
      puts "[x] #{task[2]}"
  end
  puts "===================================================\n\n"
end

def interface(db, todolist, completedtasks)
  puts "========================================\nWelcome to To Do List App!\n========================================"
  menu_choice = nil
  until menu_choice == 'exit'
    print_menu
    menu_choice = gets.chomp
    if menu_choice == 'a'
      if $todolist[0] == nil
        puts "\nThere's nothing on your to do list!\n\n"
      else
      print_todolist($todolist)
      end
    elsif menu_choice == 'b'
      interface_add_task(db)
    elsif menu_choice == 'c'
      interface_checkoff_task(db, $todolist)
    elsif menu_choice == 'd'
      if $completedtasks[0] == nil
        puts "\nThere's nothing on your completed tasks list!\n\n"
      else
      print_completedtasks($completedtasks)
      end
    end
  end
end

def print_menu
    puts "What would you like to do? Please choose one of the below options:
a) View list
b) Add item
c) Check off item
d) View completed tasks
Or, enter 'exit' to exit.\n\n"
end

# =========================================================
# ===================={ START PROGRAM }====================
# =========================================================


interface(db, $todolist, $completedtasks)


