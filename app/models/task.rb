class Task < ActiveRecord::Base
  validates_presence_of :description, message: "Task can't be blank."
  validates_uniqueness_of :description, message: 'Task is already on the list.'
end