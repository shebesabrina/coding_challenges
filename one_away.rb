require 'pry'
string1 = "pale"
string2 = "bake"

# def check_removal(string1, string2)
#   string1.length.times do |i|
#     binding.pry
#     if string1[i] != string2[i]
#       check = true
#     elsif  chr != string2[i]
#       return false
#     end
#   end
# end

def one_away(string1, string2)
  false if (string1.length - string2.length).abs > 1
  difference = false
  string1.length.times do |i|
    if string1[i] == string2[i]
    elsif  string1[i] != string2[i]
      if difference
        return false
      else
        difference =  true
      end
    end
  end
  true
end
# check_removal(string1, string2)
puts one_away(string1, string2)
