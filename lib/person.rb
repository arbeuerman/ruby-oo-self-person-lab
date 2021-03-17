require 'pry'

# your code goes here

class Person

    #instance variables
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(happiness)
        if happiness <= 10 && happiness >= 0
            @happiness = happiness
        elsif happiness < 0 
            @happiness = 0
        else 
            @happiness = 10
        end 
    end 

    def hygiene=(hygiene_index)
        if hygiene_index <= 10 && hygiene_index >= 0
            @hygiene = hygiene_index
        elsif hygiene_index < 0 
            @hygiene = 0
        else 
            @hygiene = 10
        end 
    end 

    def happy?
        @happiness > 7
    end 

    def clean?
        @hygiene > 7
    end 

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end 

    def call_friend friend
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            #binding.pry 
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end 

end 
