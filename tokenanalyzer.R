##################################################################################

# Token Analyzer File

##################################################################################



# Last word analyzer function
# 
# Design priniciples
# 1. Break it down into manageable steps
# 2. For each step, create Minimum Functional Code
# 3. Test, if successful in the base case, move to the next step
# 4. Iterate to expand functionality to edge cases

# Preprocessing Steps
# X 1. Load the text files by lines
#   X 1a. Take only a sample of the lines
# X 2. Convert all words to lower case
# X 3. Remove all punctuation
# X 4. Tokenize all the words
# X 5. Create 1grams
# X 6. Create 2grams
# X 7. Create 3grams
# X 8. Create 4grams
# X 9. Create a 3+1 table
#    X 9a. Create tokenized, ngram tables
#     9b. Count the 3grams
#     9c. Smooth the probabilities
#     9d. Record the probabilities in a new column
#     9e. Sort by frequency, take only the top of each file type
#     9f. Combine the 3 file types
# X 10. Create a 2+1 table
#   X 10a. Sort by frequency, take only the top of each file type
#     10b. Count the 3grams
#     10c. Smooth the probabilities
#     10d. Record the probabilities in a new column
#     10e. Sort by frequency, take only the top of each file type
#     10f. Combine the 3 file types
# X 11. Create a 1+1 table
#   X 11a. Sort by frequency, take only the top of each file type
#     11b. Count the 3grams
#     11c. Smooth the probabilities
#     11d. Record the probabilities in a new column
#     11e. Sort by frequency, take only the top of each file type
#     11f. Combine the 3 file types

# 12. Use Naive Bayes to create a second model
#   12a. Remove stopwards
#   12b. Find the probabilities
#   12c. Modify probabilities by +1 smoothing

# Functions Steps:
#
# X 1. Take an input string
#  2. Tokenize the string
#    2a. If string is less than 3 words, send to the 2gram, 
#    2b. If only 1 words, send to the 1gram,
# X 3. Take the last 3 words and create a 3gram
#    X 3a. tokenize the input string
#    X 3b. combine the last 3 words into a 3gram
# 4. compare the input 3gram to the 4gram table (3+1)
#    X 4a. load the corpus
#   X 4b. compare the input 3gram to the values in the 4gram table 3gram
# X 5. If a match is found, output the 4th word (+1) value, if more than one match is
#    found, store the word with the highest probability, as well as the probability
# X 6. Take the last 2 words of the input and create a 2 gram
# X 7. Repeat steps 4&5, except with the 3gram table
# X 8. Repeat steps 4&5 except, with the 2gram table
#  
# 9. output the word associated with the highest probability
#   9a. Compare back off model with Naive Bayes, to find most likely next word
#   9b. Output the MLNW
# 

# function call will take an input string and call the string parse function

#library(stringi)
library(stylo)
library(tm)
#library(readr)

string.predict <- function(str){
        #stri_split_boundaries(str)
        #txt.to.words(str)
        str <- tolower(str)
        tokens <- txt.to.words.ext(str,language="English.contr")
        tokens.length <- length(tokens)
        
        # If statement to choose which ngram to search
        if(tokens.length >= 3){
        
                str1 <- tokens[tokens.length-2]
                str2 <- tokens[tokens.length-1]
                str3 <- tokens[tokens.length-0]
                                
                if(length(all.4pred(str1,str2,str3)) > 0)
                        print(all.4pred(str1,str2,str3)[1:3])
                else if(length(all.3pred(str2,str3)) > 0)
                        print(all.3pred(str2,str3)[1:3])
                else if(length(all.2pred(str3)) > 0)
                        print(all.2pred(str3)[1:3])
                else
                        print(all.1pred())
        }
        else if(tokens.length >= 2){
                
                str2 <- tokens[tokens.length-1]
                str3 <- tokens[tokens.length-0]
                
                if(length(all.3pred(str2,str3)) > 0)
                        print(all.3pred(str2,str3)[1:3])
                else if(length(all.2pred(str3)) >0)
                        print(all.2pred(str3)[1:3])
                else
                        print(all.1pred())
        }
        else if(tokens.length >= 1){
                
                str3 <- tokens[tokens.length-0]
                                
                if(length(all.2pred(str3)) > 0)
                        print(all.2pred(str3)[1:3])
                else
                        print(all.1pred())
        }
        
        
        #c(str1,str2,str3,        tokens.length)
        #print(all.2pred(str3)[1:2])
        #print(all.3pred(str2,str3)[1:2])
        #print(all.4pred(str1,str2,str3)[1:2])        
        
        #inputlast3 <- tokens[(tokens.length-2):tokens.length]
        #input.3gram <- make.ngrams(inputlast3,3)
        
        #input.3gram
        
        
}

####################################################################

string.predict2 <- function(str){
        #stri_split_boundaries(str)
        #txt.to.words(str)
        str <- tolower(str)
        tokens <- txt.to.words.ext(str,language="English.contr")
        tokens.length <- length(tokens)
        
        # If statement to choose which ngram to search
        if(tokens.length >= 3){
                
                str1 <- tokens[tokens.length-2]
                str2 <- tokens[tokens.length-1]
                str3 <- tokens[tokens.length-0]
                
                if(length(all20.4pred(str1,str2,str3)) > 0)
                        print(all20.4pred(str1,str2,str3)[1])
                else if(length(all20.3pred(str2,str3)) > 0)
                        print(all20.3pred(str2,str3)[1])
                else if(length(all20.2pred(str3)) > 0)
                        print(all20.2pred(str3)[1])
                else
                        print(all20.1pred())
        }
        else if(tokens.length >= 2){
                
                str2 <- tokens[tokens.length-1]
                str3 <- tokens[tokens.length-0]
                
                if(length(all20.3pred(str2,str3)) > 0)
                        print(all20.3pred(str2,str3)[1])
                else if(length(all20.2pred(str3)) >0)
                        print(all20.2pred(str3)[1])
                else
                        print(all20.1pred())
        }
        else if(tokens.length >= 1){
                
                str3 <- tokens[tokens.length-0]
                
                if(length(all20.2pred(str3)) > 0)
                        print(all20.2pred(str3)[1])
                else
                        print(all20.1pred())
        }
        
        
        #c(str1,str2,str3,        tokens.length)
        #print(all20.2pred(str3)[1:2])
        #print(all20.3pred(str2,str3)[1:2])
        #print(all20.4pred(str1,str2,str3)[1:2])        
        
        #inputlast3 <- tokens[(tokens.length-2):tokens.length]
        #input.3gram <- make.ngrams(inputlast3,3)
        
        #input.3gram
        
        
}