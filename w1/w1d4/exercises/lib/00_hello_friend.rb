class Friend
  def greeting(person=nil)
    return "Hello!" if person.nil?
    "Hello, #{person}!"
  end
end
