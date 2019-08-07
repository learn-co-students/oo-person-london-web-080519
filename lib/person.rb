# your code goes here
class Person
    # attr_accessor : bank, happiness, hygiene
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    #initialize name, bank_account, happiness=8, hygiene =8
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8


    end 
    
    #  happiness = 10 if happiness > 10 
        # happiness = 0 if happiness < 0 
    def happiness
        @happiness = 10 if@happiness > 10
        @happiness = 0 if @happiness < 0
        @happiness
    end
        

        # hygiene < 10 and  >0
    def hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

        
        # instance meth
        # happy > 7 ? true : false 
    def happy?
        @happiness > 7   
    end  
        # clean true if hyg > 8
    def clean?
        @hygiene > 7
    end
    
        # get_paid (salary)
            # bank_account += salary
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

        # take_bath 
            # hyg += 4 
# return song
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
        @hygiene
    end

            # call in hygiene method
        
        # work_out
            # happiness += 2
            # hygiene -= 3 
            #return song lyrics 
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"   
    end 
            #call a friend(friends_name)
            #self.happiness += 3
            #friends_happiness += 3
            # returns "Hi #{friends_name}! It's #{self.name}. How are you?"
    def call_friend(friends_instance)
        self.happiness +=3
        friends_instance.happiness += 3
        return "Hi #{friends_instance.name}! It's #{self.name}. How are you?"
    end        
            
        #start_conversation(person,topic)
        
       def start_conversation(person, topic)
        #if topic = "politics"
       # "blah blab partisan blah lobbyist"    
       #self.happiness -=2
       #person.happiness -=2 
        if topic == "politics"
            self.happiness -= 2 
            person.happiness -= 2 

        return 'blah blah partisan blah lobbyist'
         #otherwise if topic = "weather"
        #"blah blah sun blah rain"
        #self.happiness += 1
        #person.happiness += 1 
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else 
            #otherwise 
        #"blah blah blah blah blah"
            return "blah blah blah blah blah"
        end
       end
           



end
