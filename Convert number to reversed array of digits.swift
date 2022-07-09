/*
8kyu
Given a random non-negative number, you have to return the digits of this number within an array in reverse order.

Example(Input => Output):

348597 => [7,9,5,8,4,3]
0 => [0]
*/

// !DUMB SOLUTION :-)
func digitize(_ num:Int) -> [Int] {
    var lone_arr: [Int] = []
    if num<10{
        lone_arr.append(num)
        return lone_arr
    } else{
    var str_array: [String] = []
    var str = String(num)
    str = String(str.reversed())
    
    for index in str{
        str_array.append(String(index))
    }
    var int_array: [Int] = []

    for index in str_array{
        int_array.append(Int(index) ?? 0)
    }
    return int_array
    }
}

