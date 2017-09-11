
class Robot

  attr_reader :name

  def initialize
    @name = get_name
  end

  def reset
    #gives robot a new name
    @name = get_name
  end

  def get_name
    (("A".."Z").to_a.sample(2) + ("0".."9").to_a.sample(3)).join
  end

end
