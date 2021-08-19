require 'pry'

class Person
    # needs to be able to read the happiness but set my own happiness range
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(level)
        if level >= 10
            @happiness = 10
        elsif level <=0
            @happiness = 0
        else
            @happiness = level
        end
    end

    def hygiene=(number)
        if number >= 10
            @hygiene = 10
        elsif number <= 0
            @hygiene = 0
        else
            @hygiene = number
        end
    end

    def happy?
        self.happiness >7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account = self.bank_account + amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        return "♪ another one bites the dust ♫"
    end


    def call_friend(person)
        self.happiness = self.happiness + 3
        person.happiness = person.happiness + 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            person.happiness = person.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            person.happiness = person.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end