require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
dictionary2 = ["ing","ed","ion","es"]

def substrings (input_str,dict) #input: words/statement,array of 'dictionary'
  response=Hash.new(0)          #create hash with default value of 1
  str_lowered=input_str.downcase #make strings to lower case for case insensitivity
  
 

  dict.each do|word|
    matches_count=str_lowered.scan(word).length #scan 'str_lowered' string with 'word' from 'dictionary' element. 
    #length method returns integer if there is indeed similar word or almost similar. 
    #binding.pry
    unless matches_count==0
      response[word]=matches_count       #if length>0, then it is assigned as value for key 'word'.
    end
  end

  response
end

p substrings("I'm going to make myself bored for my competition",dictionary2)