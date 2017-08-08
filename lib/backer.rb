require '/Users/jd/Documents/applicationDevelopment/flatiron/web/oo-kickstarter-cb-000/lib/self_aware.rb'
# borrowing code from https://github.com/stritch-dev/ruby-advanced-class-methods-lab-cb-000/blob/solution/lib/song.rb
class Backer < SelfAware
  def back_project(project)
    add_to_has_many project
    project.add_backer self
  end

  def backed_projects
    has_many
  end
end
