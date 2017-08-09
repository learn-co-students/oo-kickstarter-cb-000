# provides sturcture and methods for a class to
# create new instances and
# keep track of instances
class SelfAware
  attr_accessor :name, :belongs_to, :has_many

  # keep track of all instances of this class.
  @@all = []

  def initialize(name)
    @name = name
    @belongs_to = []
    @has_many = []
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_to_has_many(object)
    @has_many << object
  end

  def add_to_belongs_to(object)
    @belongs_to << object
  end

  def list_belongs_to
    @belongs_to
  end
end
