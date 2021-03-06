//6kyu
/*Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. 
You can guarantee that input is non-negative.
Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case*/

func countBits(_ n: Int) -> Int {
    let total = String(n, radix:2)
    var result = 0
    for index in total{
        if index=="1"{
            result+=1
        }
    }
    return(result)
}

