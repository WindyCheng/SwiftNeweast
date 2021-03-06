//: Playground - noun: a place where people can play

import UIKit

// 在swift3中怎么进行区间运算符无法覆盖的特殊的遍历操作？
// 可以使用reverse和stride

// 反向遍历可以使用reversed
// 注意...和..<在使用reversed()时的区别
print("\n反向遍历=============\n")
print("for i in (1...10).reversed()")
for i in (1...10).reversed(){
    print(i)
}

print("for i in (1..<10).reversed()")
for i in (1..<10).reversed(){
    print(i)
}
print("\n反向遍历=============\n")



// 使用stride
// 注意参数to和through的区别
print("\n步进跳跃遍历from=============to(不包含最后的元素)\n")
print("for i in stride(from:0, to:10, by:2)")
for i in stride(from:0, to:10, by:2){
    print(i)
}
print("\n步进跳跃遍历from=============to(不包含最后的元素)\n")


print("\n步进跳跃遍历from=============through(包含最后的元素)\n")
print("for i in stride(from:0, through:10, by:2)")
for i in stride(from:0, through:10, by:2){
    print(i)
}
print("\n步进跳跃遍历from=============through(包含最后的元素)\n")



print("反向遍历for i in stride(from:10, to:0, by:-1)")
for i in stride(from:10, to:0, by:-1){
    print(i)
}

print("反向遍历for i in stride(from:10, through:0, by:-1)")
for i in stride(from:10, through:0, by:-1){
    print(i)
}

print("反向遍历for i in stride(from:0, to:10, by:0.1)")
for i in stride(from:0, to:10, by:0.1){
    print(i)
}
