class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    # total = 0
    # @characters.each do |character|
    #   total += character.salary
    # end
    # total
    #
    # @characters.map do |character|
    #   character.salary
    # end.sum

    @characters.sum do |character|
      character.salary
    end
    #
    # @characters.reduce(0) do |total, character|
    #   total + character.salary
    # end
  end
end
