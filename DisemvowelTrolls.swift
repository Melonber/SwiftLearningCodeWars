/*6 kyu
Trolls are attacking your comment section!

A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

Your task is to write a function that takes a string and return a new string with all vowels removed.

For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
*/
func disemvowel_0(_ s: String) -> String {

    return s.filter {$0 != "a" && $0 != "e" && $0 != "i" && $0 != "o" && $0 != "u" && $0 != "A" && $0 != "E" && $0 != "I" && $0 != "O" && $0 != "U"}
} //This shit is not working((

func disemvowel(_ s: String) -> String {
  return s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
} // It works !
