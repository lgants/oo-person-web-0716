class Person

  attr_reader :name
  attr_accessor :bank_account

  def initialize(name_i)
    @name = name_i
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness
  end

  def happiness=(index_i)
    @happiness=index_i
    self.happiness < 0 ? self.happiness = 0 : self.happiness
    self.happiness > 10 ? self.happiness = 10 : self.happiness
  end

  def hygiene
    @hygiene
  end

  def hygiene=(index_i)
    @hygiene=index_i
    self.hygiene < 0 ? self.hygiene = 0 : self.hygiene
    self.hygiene > 10 ? self.hygiene = 10 : self.hygiene
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(amount_i)
    self.bank_account += amount_i
    'all about the benjamins'
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

  def call_friend(instance_i)
    self.happiness += 3
    instance_i.happiness += 3
    "Hi #{instance_i.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person_i,topic_i)
    case topic_i
    when 'politics'
        self.happiness -= 2
        person_i.happiness -= 2
        'blah blah partisan blah lobbyist'
      when 'weather'
        self.happiness += 1
        person_i.happiness += 1
        'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
    end
  end

end
