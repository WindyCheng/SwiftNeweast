//: Playground - noun: a place where people can play

import UIKit


// swift的函数命名，隐含包含第一个参数的意义
func sayHelloTo( name: String , greeting: String ) -> String{
    
    return "\(greeting), \(name)!"
}

//sayHelloTo("Playground", "Hello")
//sayHelloTo("Playground", greeting: "Hello")    //swift 2
sayHelloTo(name: "Playground", greeting: "Hello")    //swift 3


// swift内置函数的例子
var arr = [1,2,3,4,5]

//arr.insert(0, atIndex: 0)     //swift 2
arr.insert(0, at: 0)            //swift 3

var str = "Hello, Playground"

//str.replaceRange(str.startIndex..<str.startIndex.advancedBy(5), with: "Hi")   //swift 2

str.replaceSubrange(str.startIndex..<str.index(str.startIndex, offsetBy: 5), with: "Hi")    //swift 3

/*更新:
 swift 2:
str.stringByReplacingOccurrencesOfString("Hi", withString: "Morning")
 swift3中这个方法的API变成了.replacingOccurrences(of: , with:)
 */

str.replacingOccurrences(of: "Hi", with: "Morning")     //swift 3


// 显示使用外部参数名
func sayHelloTo( name: String , withGreetingWord greeting: String ) -> String{
    
    return "\(greeting), \(name)!"
}

// 让函数的调用更像自然语言
//sayHelloTo("Playground", withGreetingWord: "Hello")       //swift 2
sayHelloTo(name: "Playground", withGreetingWord: "Hello")   //swift 3


// 第一个参数也可以有外部参数名, 不是默认风格，不提倡
func sayHello( to name: String , withGreetingWord greeting: String ) -> String{
    
    return "\(greeting), \(name)!"
}

sayHello(to: "Playground", withGreetingWord: "Hello")


// 另外一个例子
func mutipleOf( num1: Int , and num2: Int) -> Int{
    return num1 * num2
}
//mutipleOf(4, and: 2)        //swift 2
mutipleOf(num1: 4, and: 2)    //swift 3
// multiple of 4 and 2

// 使用 _ 省略外部参数名
func mutiply( num1:Int , _ num2: Int ) -> Int{
    return num1*num2
}
//mutiply(4, 2)          //swift 2
mutiply(num1: 4, 2)      //swift 3