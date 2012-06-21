class ToDoItem
  attr_accessor :name, :completed, :creation_date, :completion_date

  def initialize(name, date)
    @name = name
    @completed = false
    @creation_date = date
    @completion_date = nil
  end

  def complete(date)
    @completion_date = date
    @completed = true
  end

end