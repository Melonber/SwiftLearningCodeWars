/*
6kyu

Return the century of the input year. The input will always be a 4 digit string, so there is no need for validation.

Examples

"1999" --> "20th"
"2011" --> "21st"
"2154" --> "22nd"
"2259" --> "23rd"
"1124" --> "12th"
"2000" --> "20th"
*/ P.S very dumb solution, i know :)
func whatCentury(_ year: String) -> String {
    let index = year.index(year.startIndex, offsetBy: 2)
    let mySubstring = year[..<index]
    let Intyear = ((Int(mySubstring) ?? 0 )+1)
    var ending = ""
    if Intyear % 10 == 1{
        ending="st"
    }
    else if Intyear % 10 == 2 {
        ending="nd"
    }
    else if Intyear % 10 == 3 {
        ending="rd"
    }
    else{
        ending="th"
    }
    let str_year = String(Intyear)
    return str_year+ending
}
