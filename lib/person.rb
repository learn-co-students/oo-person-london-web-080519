# your code goes here
class Person
    #initialize with name that cannot be changed
    #initialize with $25 in bank account (no max/min)
  
    attr_reader :name
    #get paid/receive payments. read/write

    attr_accessor :bank_account, :happiness, :hygiene

    PEOPLE = []


    #initialize with 8 happiness points (0..10)
    #initialize with 8 hygiene points (0..10)
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness ##getter? 
        @happiness = 10 if @happiness > 10 #whenever we go above 10, bump it down to 10
        @happiness = 0 if @happiness < 0 #whenever we go below 0, bump it up to 0
        @happiness  #return our happiness
    end

    def hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

    #take a bath
    #call friend
    #start conversation
    #state if happy &&/|| clean
    # if happy? || clean > 7 return true else return false

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        #add to persons bank account
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
    #hygiene_points += 4
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
    #happiness += 2
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    #call_friend(another instance of person class)
    def call_friend(friend)
    # caller & callee's happiness points += 3
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        #if topic == "politics"
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            #happiness (of both) -= 1
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness +=1
            #happiness (of both) += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end