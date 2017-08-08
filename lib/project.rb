require '/Users/jd/Documents/applicationDevelopment/flatiron/web/oo-kickstarter-cb-000/lib/self_aware.rb'
# implementing for lab
class Project < SelfAware
  def title
    @name
  end

  def add_backer(backer)
    add_to_belongs_to backer
    backer.add_to_has_many self
  end

  def backers
    list_belongs_to
  end
end
