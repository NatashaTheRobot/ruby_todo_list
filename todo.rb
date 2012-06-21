require 'docopt'
require './todo_list'

my_list = ToDoList.new

doc = "Usage: todo.rb [options]

  -h --help     Show this.
  -v --verbose  Print more text.
  -a --add      Add To Do Item
  -l --list     Lists all Incomplete To Do Items
  "

options = Docopt(doc, version=nil, help=true)

p ARGV.join(" ")

case options
  when options['-a'] then my_list.add_item(ARGV.join(" "))
  when options['-l'] then puts my_list.list_items
end

=begin
case command
  when 'q' then puts "Goodbye!"
  when 'add' then add_item(parts[2..-1].join(" "))
  when 'dl' then delete_item(parts[2..-1].join(" "))
  when 'complete' then complete_item(parts[2..-1].join(" "))
  else
    puts "Sorry, I don't know how to #{command}"
end
=end

