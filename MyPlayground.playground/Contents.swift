//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var a = 20
a = 10
let b = 20
//b = 10 error:'b' is a 'let' constant 常量不能被修改

//自动推导类型，使用option+单击可查看属性的详情
let str1 = "hello"
let intValue = 20
let floatValue = 1.2

//指定数据类型
//let 变量名：类型 = 值
let doubleValue:Double = 10

//空合运算
var aName:String? = "hello"
let bName = aName ?? "world"

//区间运算
for index in 1...5{
    print(index)
}

for index in 1..<5{
    print(index)
}

//可选项
//可选值：可以有值，可以为nil(用？表示可选值)
let URL = NSURL(string:"http://www.baidu.com/")
var str2:String? = "lalal"

var a3:Int?

//if let：确保myUrl有值，才会进入分支
if let myUrl = URL {
    print(myUrl)
   
}

var cName:String?
if let name = cName {
    print(name)
}

//在分支内修改值
var cAge:Int? = 10
if var age = cAge {
    age = 20
    print(age)
}


//guard let
/*
 1、guard let和if let 相反，表示一定有值，没有就直接返回
 2、能降低分支层次结构
 3、playground不能展示效果，要在函数中展示，下面给出函数代码，调用需要在demo中测试
 测试代码：
 var t = guardLetDemo()
 t.guardLetDemo()
 
 可观察打印结果，也可改变aNick和aAge的值进行测试
 */

class test {
    func guardLetDemo() {
        let aNick:String? = "zhangsan"
        let aAge:Int? = 10
        guard let nick = aNick,let age = aAge else
        {
            print("nil")
            return
        }
        print("guard let:" + nick + String(age))
        
    }
}

//条件语句
//if 语句
/*
 1、必须有大括号
 2、没有非零即真的概念，只有ture/false
 */

let num = 20
if num > 10 {
    print("大于10")
}else{
    print("小于或等于10")
}

/*
 如果直接这样写，会报以下的错误
 if num {
 
 }
 'Int' is not convertible to 'Bool'
 即证明没有非零即真的概念
 */

//switch语句
/*
 1、值可以是任何类型
 2、作用域仅在case内部
 3、不需要break
 4、每一个case都要有代码,否则会报错：case' label in a 'switch' should have at least one executable statement
 */

let name = "nick"

switch name {
case "nick":
    print("name is " + name)
case "":
    break//相当于有一行代码，不会报错
default:
    print("other")
}

//循环
//for 循环
//区间
for i in 0..<5{
    print(i)
}
//步长循环
//递增
for i in stride(from: 0, to: 12, by: 2){
    print(i)
}

//递减
for i in stride(from: 12, to: 0, by: -2){
    print(i)
}

//反序循环
let range = 0...5
for i in range.reversed(){
    print(i)
}

//while循环
var n = 2
while n < 200 {
    n = n * 2
}
print(n)

//repeat-while循环
//它和while的区别是在判断循环条件之前，先执行一次循环的代码块，然后重复循环直到条件为false
var m = 2
repeat {
    m = m * 2
}while m < 200
print(m)

repeat {
    m = m * 2
}while m < 200
print(m)

//字符串：String结构体，效率比对象高，一般推荐使用，支持遍历
var nameStr:String = "张三Mr"
//获取字节数量
print(nameStr.lengthOfBytes(using: .utf8))
//获取字符串长度
print(nameStr.characters.count)
for a in nameStr.characters{
    print(a)
}
//字符串拼接
let age = 30
let place = "邻居"
print(place + nameStr + String(age) + "岁")
//"\(变量名)"会自动转换拼接
print("\(place)\(nameStr)\(age)岁")
let rect = CGRect(x:0,y:0,width:200,height:200)
print(rect)
print("\(rect)")

//格式字符串
let h = 10
m = 5
let s = 8
let timeStr = String(format:"%02d:%02d:02d",arguments:[h,m,s])
let timeStr1 = String(format:"%02d:%02d:%02d",h,m,s)

/*
 在swift中使用Range时，最好把String转为NSString
 str.substring(with:Range<String.Index>)比较麻烦
 '值 as 类型'用来类型转换
 */
var asStr = "abc没跟上123"
(asStr as NSString).substring(with: NSMakeRange(1, 6))

let index = asStr.index(asStr.startIndex, offsetBy: 3)

//"","1"只是用这个字符串本身的长度来取asStr这个字符串的索引位置
asStr.substring(from:"".endIndex)
asStr.substring(from: "1".endIndex)
asStr.substring(to: index)

//string使用Range
let myRange = asStr.startIndex..<asStr.index(asStr.startIndex, offsetBy: 5)
asStr.substring(with: myRange)

let myRange1 = index..<asStr.index(asStr.startIndex, offsetBy: 5)
asStr.substring(with: myRange1)


























