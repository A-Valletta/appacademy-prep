class Dictionary
  attr_reader :entries
  def initialize
    @entries = {}
  end

  def add(object)
    if object.class == String
      @entries[object] = nil
    else
      object.each { |key, value| @entries[key] = value}
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(string)
    keywords.include?(string)
  end

  def find(string)
    return_hash = {}
    keywords.each { |key| return_hash[key] = @entries[key] if key.include?(string) }
    return_hash
  end

  def printable
    final = ''
    keywords.each { |key| final << "[#{key}] \"#{@entries[key]}\"\n"}
    final[0...-1]
  end
end
