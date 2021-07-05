class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
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
    self.hygiene = 0 if self.hygiene < 1
    self.happiness += 2

    "♪ another one bites the dust ♫"
  end

  def call_friend(person_instance)
    self.happiness += 3
    person_instance.happiness += 3
    self.happiness = 10 if self.happiness > 10
    person_instance.happiness = 10 if person_instance.happiness > 10
    "Hi #{person_instance.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2

      self.happiness && person.happiness = 0 if @happiness < 1

      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      'blah blah blah blah blah'
    end
  end

  def happiness=(happiness)
    @happiness = happiness
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

end
