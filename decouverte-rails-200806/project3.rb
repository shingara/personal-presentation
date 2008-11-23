class Project < ActiveRecord::Base
  has_many :tasks
end

class Task < ActiveRecord::Base
  belongs_to :project
end

mon_project.tasks
mon_project.tasks.count

mon_project.tasks.find(:all, :order => 'title')
mon_project.tasks << Task.new(:title => 'foo')

mon_task.project
