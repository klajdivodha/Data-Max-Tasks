import re

def first_non_repeated_word(sentence: str) -> str:
    if sentence=="": return None

    sentence = re.sub(r"[.,!?]", "", sentence).lower()
    words = sentence.split(" ")
    
    word_dict={}
    repeated_word_dict={}

    for word in words:
        if word in word_dict:
            del word_dict[word]
            repeated_word_dict[word]=0
        else:
            if word not in repeated_word_dict:
                word_dict[word]=0

    for x in word_dict:
        return x  

    return None      

# Example 1 
assert first_non_repeated_word("This is a test. This test is fun.") == "a"
# Example 2
assert first_non_repeated_word("Hello hello world world!") == None
# Example 3
assert first_non_repeated_word("Coding is great and coding is easy") == "great"
# Example 4
assert first_non_repeated_word("") == None