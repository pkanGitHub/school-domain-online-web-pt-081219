# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, level)
    # this sort of means #=> a || a = b ... or #=> x || x = y
    # it's freak'n weird
    roster[level] ||= []
    roster[level] << student
  end

  def grade(level)
    roster.detect do |x, y|
      if x == level
        return y
      end
    end
  end

  def sort
    new_hash = {}
    roster.each do |x, y|
      new_hash[x] = y.sort
    end
    new_hash
  end
end



school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)
school.add_student("Moshe Zeus", 9)
school.add_student("Onkelos Octavius", 9)
school.roster
school.add_student("Sugar Zaza", 5)
school.roster
school.add_student("Theo Madus", 5)
school.add_student("Abbah Zabbah", 2)
school.roster
school.grade(9)
school.sort
