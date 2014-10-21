require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)
  def start
    command = ARGV
    task = command[0]
    task_desc = command[(1..-1)].join(" ")
    
    if task == "add"
      TasksController.add task_desc
    elsif task == "list"
      TasksController.list
    elsif task == "delete"
      TasksController.delete task_desc
    elsif task == "complete"
      TasksController.complete task_desc
    else
      TasksController.invalid_command
    end
  end

start