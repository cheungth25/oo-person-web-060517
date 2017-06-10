# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(level)
    if level > 10
      @happiness = 10
    elsif level < 0
      @happiness = 0
    else
      @happiness = level
    end
  end

  def hygiene=(level)
    if level > 10
      @hygiene = 10
    elsif level < 0
      @hygiene = 0
    else
      @hygiene = level
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness + 2)
    self.hygiene=(@hygiene - 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(instance_person)
    self.happiness=(@happiness + 3)
    instance_person.happiness=(instance_person.happiness + 3)
    "Hi #{instance_person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness=(@happiness - 2)
      person.happiness=(person.happiness - 2)
      return "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness=(@happiness + 1)
      person.happiness=(person.happiness + 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
# Pry.start
