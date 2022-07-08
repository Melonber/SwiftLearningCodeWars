// 7kyu
/*
Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.
*/
func summation(_ n: Int) -> Int {
    var result = 0
    var count = 1
    while count<=n{
        result+=count
        count+=1
    }
    return result
    
}
