class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    updated_seconds
    "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@seconds)}"
  end

  def padded(num)
    if num < 10
      "0#{num}"
    else
      "#{num}"
    end
  end

  def updated_seconds
    @hours = @seconds / 3600
    @minutes = (@seconds - (@hours * 3600)) / 60
    @seconds = (@seconds - (@hours * 3600 + @minutes * 60))
  end
end
