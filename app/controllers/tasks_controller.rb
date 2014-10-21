class TasksController

  def self.invalid_command
    TasksView.display_invalid_command
  end

  def self.list
    TasksView.display_list 
  end

  def self.add(sentence)
    task = Task.create(description: sentence)
    TasksView.display_notice "Added '#{task.description}' from your TODO list..."
  end

  def self.delete(task_id)
    task = Task.find_by(id: task_id.to_i)
    TasksView.display_notice "Deleted '#{task.description}' from your TODO list."
     task.destroy
  end

  def self.complete(task_id)
    task = Task.find_by(id: task_id.to_i)
    task.completed = true
    task.save
    TasksView.display_notice "Completed '#{task.description}' from your TODO list..."
  end

end