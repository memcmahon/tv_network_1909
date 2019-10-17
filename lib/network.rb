class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    highest_paid_character = characters.sort_by do |char|
      char.salary
    end.last
    #
    # highest_paid_character = characters.max_by do |char|
    #   char.salary
    # end

    highest_paid_character.actor

    #return string Leslie_Knope.actor
  end

  def payroll
    # payroll = {}
    # characters.each do |character|
    #   payroll[character.actor] = character.salary
    # end
    # payroll

    characters.reduce({}) do |payroll, character|
      payroll[character.actor] = character.salary
      payroll
    end
    # return a hash, key: string actor, value: the salary of that actor
  end

  def characters
    @shows.map do |show|
      show.characters
    end.flatten
  end

end
