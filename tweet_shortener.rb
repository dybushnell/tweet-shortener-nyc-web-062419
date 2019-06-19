require 'pry'
=begin
First, write a method, dictionary, that contains the words-to-be-substituted and their substitutes. The original words from the list below will be the keys. The substitute of a particular word becomes that key's value. You will use this hash in later methods to look up words and replace them with their substitutes.
=end

#def dictionary

dictionary_hash = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@", 
        "and" => "&"
    }
 
#end

def word_substituter(tweet)
    tweet_array = tweet.to_s.split(" ")

    i=0
    while i < tweet_array.length

        dictionary_hash.each do |long, short|
            if tweet_array[i] == long
                tweet_array[i] = short
            end
        end
        
        i+=
    end

    return tweet_array.join
end

=begin
Write a method, word_substituter that takes in a string of a tweet as an argument and shortens that string based on the allowed substitutes. Use your dictionary method that contains your dictionary hash to compare the words in the tweet against the keys in the hash. If there are any matches, replace the word in the tweet with the associated substitute from the hash.

Hint: How can you iterate over every word in a tweet and compare it to the hash keys? Convert the tweet into an array to enable this. Then, make sure to convert it back into a string to return the shortened tweet at the end of the method.
Hint: How can you grab all of the keys of the hash for the purpose of comparing them to the words in the tweet? Use the .keys method.
=end



def bulk_tweet_shortener(tweet)
=begin
Write a method, bulk_tweet_shortener that takes in an array of tweets, iterates over them, shortens them, and puts out the results to the screen.

Hint: You already wrote a method that shortens tweets. Use it!
Hint: Remember that you can puts out the result of a method by putting puts in front of the method call.
=end
end


def selective_tweet_shortener(tweet)
=begin
Write a new method, selective_tweet_shortener, that only does the substitutions if the tweet is longer than 140 characters. If the tweet is 140 characters or shorter, just return the original tweet.
=end
end


def shortened_tweet_truncator(tweet)
=begin
Hint: Strings are indexed like arrays. That means you can return string index elements, or a set of string index elements, using the [] method. For example:
string = "Hi there, I am a string in this interesting and informative example"
string[0]
# => "H"
 
string[0..10]
# => "Hi there, I"
=end
end


