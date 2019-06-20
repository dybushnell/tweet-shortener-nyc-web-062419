require 'pry'


def dictionary

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
 
    return dictionary_hash

end

def word_substituter(tweet)
=begin
Write a method, word_substituter that takes in a string of a tweet as an argument and shortens that string based on the allowed substitutes. Use your dictionary method that contains your dictionary hash to compare the words in the tweet against the keys in the hash. If there are any matches, replace the word in the tweet with the associated substitute from the hash.

Hint: How can you iterate over every word in a tweet and compare it to the hash keys? Convert the tweet into an array to enable this. Then, make sure to convert it back into a string to return the shortened tweet at the end of the method.
Hint: How can you grab all of the keys of the hash for the purpose of comparing them to the words in the tweet? Use the .keys method.
=end
    tweet_array = tweet.split(" ")
    dictionary_hash = dictionary
    i=0
    while i < tweet_array.length

        dictionary_hash.each do |long, short|
            if tweet_array[i].downcase == long
                tweet_array[i] = short
            end
        end
        
        i+=1
    end

    return tweet_array.join(" ")
end



def bulk_tweet_shortener(tweet_array)
=begin
Write a method, bulk_tweet_shortener that takes in an array of tweets, iterates over them, shortens them, and puts out the results to the screen.

Hint: You already wrote a method that shortens tweets. Use it!
Hint: Remember that you can puts out the result of a method by putting puts in front of the method call.
=end
    i = 0
    while i<tweet_array.length
       puts word_substituter(tweet_array[i])
        i+=1
    end
end


def selective_tweet_shortener(tweet)
=begin
Write a new method, selective_tweet_shortener, that only does the substitutions if the tweet is longer than 140 characters. If the tweet is 140 characters or shorter, just return the original tweet.
=end

    if tweet.size > 140
        return word_substituter(tweet)
            binding.pry
    else
        return tweet
    end
       
end




def shortened_tweet_truncator(tweet)
=begin
Write another method, shortened_tweet_truncator, that truncates the tweet to 140 characters with an ellipsis (...) if it's still too long after substitution. E.g. "Random Passage satisfies the craving for those details that ..."
=end

    if word_substituter(tweet).length <=140
        return word_substituter(tweet)
    else
        return word_substituter(tweet)[0..135]+" ..."
    end



end


