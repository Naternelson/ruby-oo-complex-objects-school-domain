# code here!
class School

    attr_accessor :name
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name,grade) #Adds a student to the Roster
        keys = @roster.keys

        if keys.include?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        key_array = @roster.keys
        key_array.each {|key| @roster[key].sort!}
        @roster
    end
end