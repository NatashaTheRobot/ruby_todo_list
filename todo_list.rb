require './todo_item.rb'

class ToDoList

  #attr_accessor :items

  def initialize(items = [])
    @items = items
  end

  def add_item(name)
    @items << ToDoItem.new(name)
  end

  def list_to_dos
    list = []
    @items.each {|item| list << item.name }
    list
  end

  def run
    puts "This is your ToDo List. Add, List, Delete, Complete Items."
    command = gets.chomp
    while command != "q"
      puts ''
      printf "enter command: "
      input = gets.chomp
      parts = input.split
      if parts[0] == 'q'
        command = 'q'
      elsif parts[0] == 'todo'
        command = parts[1]
      end
      case command
        when 'q' then puts "Goodbye!"
        when 'add' then add_item(parts[2..-1].join(" "))
        else
          puts "Sorry, I don't know how to #{command}"
      end
    end
    puts ''
    puts "Your To Dos"
    puts "-------------------"
    puts list_to_dos
  end

end

my_list = ToDoList.new
my_list.run
