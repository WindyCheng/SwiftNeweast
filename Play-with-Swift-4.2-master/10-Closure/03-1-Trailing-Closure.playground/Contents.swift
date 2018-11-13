//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<10{
    //arr.append(random()%1000)   //swift 2
    arr.append(Int(arc4random()%1000))   //swift 3
}

/*
 由于以下代码在swift3中的改动都差不多: arr.sort()改成arr.sorted(by: )，在这里我直接将下面的代码替换成正确的代码
 swift 3中sort()的API改成了sorted(by: ) 这点和python比较像
 在这里引用一下慕课网用户"慕大神仙"的解释:
 如果大家使用的是swift3.0版本，那么需要注意：
 2.0版本中的方式是 sort() 和 sortInPlace()
 而在3.0版本中以上方法被修改为 sorted() sort()
 新版中 sorted()是不会改变原数组的值，而sort()是会改变原数组的值，这点与2.0是不一样的
 */

arr.sorted(by: { a , b in return a > b})


// Trailing Closure
arr.sort(){ a , b in
    return a > b
}

arr.sort{ a , b in
    return a > b
}


arr.map{ number -> String in
    
    var number = number
    
    var res = ""
    repeat{
        res = String(number%2) + res
        number /= 2
    }while number != 0
    return res
}


