
require "pry"
class School

 attr_reader :roster, :name, :grade

def initialize(roster)
   @roster = {}

end



def add_student(name, grade)
    @name = name
    @grade = grade

    if roster[@grade] 
        roster[@grade] << @name   
    
    else
        roster[@grade] = []
        roster[@grade] << @name
    end
end

def grade(grade)
@roster[grade]

end

def sort
@roster = @roster.sort.to_h
@roster.map {|k,v|  @roster[k] = v.sort}

@roster
end





end