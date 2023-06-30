require './decorating'

class Person < Nameable
    attr_reader :id
    attr_accessor :name, :age
  
    def initialize(age, parent_permission: true, name: "Unknown")
      super()
      @id = generate_id
      @name = name
      @age = age
      @parent_permission = parent_permission
    end
  
    def can_use_services?
      of_age? || @parent_permission
    end

    def correct_name
      puts name
      name
    end

    private
  
    def of_age?
      @age >= 18
    end
  
    def generate_id
      # Generating an ID here
    end
    
  end


person = Person.new(12)

person.correct_name