require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Unkown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_hash
    super.merge(specialization: @specialization, class_name: 'Teacher')
  end
end
