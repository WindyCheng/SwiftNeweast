//: Playground - noun: a place where people can play

import UIKit

func runningMetersWithMetersPerDay( metersPerDay: Int) -> () -> Int {
    
    var totalMeters = 0
    return {
        totalMeters += metersPerDay
        return totalMeters
    }
}

//var planA = runningMetersWithMetersPerDay(2000)  // swift 2
var planA = runningMetersWithMetersPerDay(metersPerDay: 2000)  // swift 3

planA()
planA()
planA()

//var planB = runningMetersWithMetersPerDay(5000)  // swift 2
var planB = runningMetersWithMetersPerDay(metersPerDay: 5000)  // swift 3
planB()
planB()
planB()


var anotherPlan = planB
anotherPlan()

// 证明函数和闭包属于引用类型
planB()


// 引用类型的常量可以修改其内部的值
//let planC = runningMetersWithMetersPerDay(3000)              //swift 2
let planC = runningMetersWithMetersPerDay(metersPerDay: 3000)  //swift 3
planC()
planC()

// 引用类型的常量不可以修改其所指向的内存空间
//planC = runningMetersWithMetersPerDay(6000)
