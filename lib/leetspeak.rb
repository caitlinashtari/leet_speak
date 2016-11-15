class String
  define_method(:leetspeak) do
    leet_string = self
    speak_array = []
    leet_array = leet_string.split(//)
    count = 0
    leet_array.each() do |letter|
      count += 1
      if (letter == "s") && (count == 1)
        speak_array.push(letter)
      elsif letter.eql?("e")
        speak_array.push("3")
      elsif letter.eql?("I")
        speak_array.push("1")
      elsif letter.eql?("o")
        speak_array.push("0")
      elsif (letter == "s")
        speak_array.push("z")
      else
        speak_array.push(letter)
      end
    end
    speak_array.join()
  end
end
