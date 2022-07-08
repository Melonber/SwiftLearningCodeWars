//7 kyu
/*Write a function that takes in a string of one or more words, and returns the same string, but with all 
five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. 
Spaces will be included only when more than one word is present.*/
func spinWords(in sentence: String) -> String {
    sentence
        .split(separator: " ")
        .map { "\($0)" }
        .map { $0.count > 4 ? String($0.reversed()) : $0 }
        .joined(separator: " ")
}
