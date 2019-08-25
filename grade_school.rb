class School
  def initialize
    @roster = {}
  end

  def add(student, grade)
    @roster.key?(grade) ? @roster[grade] << student : @roster[grade] = [student]
  end

  def to_h
    sorted = {}
    @roster.keys.sort.map {|key| sorted[key] = @roster[key].sort}
    sorted
  end

  def grade(grade)
    @roster[grade] || []
  end
end
