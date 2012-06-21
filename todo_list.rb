require './todo_item.rb'

class ToDoList

  #attr_accessor :items

  def initialize(items = [])
    @items = items
  end

  def add_item(name)
    @items << ToDoItem.new(name, Time.now)
  end

  def list_items
    list = []
    @items.each {|item| list << item.name unless item.complete}
    list
  end

  def item_index(name)
    @items.each_with_index do |item, index|
      if item.name == name
        return index
      end
    end
  end

  def delete_item(name)
    @items.delete_at(item_index(name))
  end

  def complete_item(name)
    @items[item_index(name)].complete(Time.now)
  end
end

=begin
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
        when 'dl' then delete_item(parts[2..-1].join(" "))
        when 'complete' then complete_item(parts[2..-1].join(" "))
        else
          puts "Sorry, I don't know how to #{command}"
      end
      puts ''
      puts "Your To Dos"
      puts "-------------------"
      puts list_items
    end

  end
=end
