## 基本数据类型
- 1.变量与常量的声明格式：

```
变量
var 变量名 [:类型] [= 初始值]

eg.:
var a : Int
var b = 25
var c : Int = 25

常量
let 常量名 [:类型] = 初始值

eg.:
let d : Int
let e = 25
let f : Int = 25
```

- 2.输出函数print

```
函数原型
print(_:separator:terminator:)

eg.:
var name = "Wicky"
print(name) //普通输出
print("\(name) is a talent.") //使用变量
int a = 1
int b = 2
print(a,b,separator:"&",terminator:"\n")
```
第一个参数可变参数，传入多个参数。separator为分隔符，默认值为空格。terminator为结束符，默认值为\n。

- 3.整形

|类型|数域|
|:---:|:---:|
| Int8|-128\~127|
|Int16|-32768\~32767|
|Int32|-2^31^\~2^31^-1(21.4亿左右)|
|Int64|-2^63^\~2^63^-1|
|Int|内存空间与平台原生字长相同|

另外还有无符号整数，其数域为0\~2^n^-1。




