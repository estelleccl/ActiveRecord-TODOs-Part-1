class TasksView
  
  def self.display_invalid_command
    puts "Invalid command :"
  end

  def self.display_list
    puts "This is your to do list: "
    
    Task.all.each_with_index do |task, index|
        if task.completed == "t"
          completed = 'X'
        else
          completed = ''
        end
      puts "#{task.id}.   " + "[#{completed}] #{task.description}"
      end
  end

  def self.display_notice(notice)
    puts notice
  end
end