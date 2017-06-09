class Temperature
  def initialize(hash)
    @fahrenheit = hash[:f] if hash[:f]
    @celsius = hash[:c] if hash[:c]
  end

  def in_fahrenheit
    if @celsius.nil?
      @fahrenheit
    else
      (@celsius * 9.0 / 5) + 32
    end
  end

  def in_celsius
    if @fahrenheit.nil?
      @celsius
    else
      (@fahrenheit - 32) * 5 / 9.0
    end
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    @celsius = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @fahrenheit = temp
  end
end
