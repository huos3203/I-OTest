# 对象归档（序列化机制）
* 两种方式：
** 直接使用`NSKeyedArchiver`提供的`类方法`。
archivedDataWithRootObject:data,archiveRootObject:toFile:file
** 使用NSMutableData对象创建NSKeyedArchiver对象，使用实例方法：
encodeXxx:value forKey:key方法，依次归档不同的对象。
## 归档自定义的Objective-C对象
条件：
实现NSCoding协议中的两个协议方法：
initWithCoder：恢复对象的所有实例变量的值
encodeWithCoder：归档对象的所有实例变量
实例变量：也需实现NSCoding协议。


# NSPathUtilities.h 管理路径
包含了对NSString类的扩展，从而为NSString类新增了一些专门用于操作路径的方法，这些方法的主要作用就是更方便的操作路径。

# I-OTest
在Terminal(终端) 运行oc测试程序

## 创建并打开文件
  // 第一步进入你想要存放的地方
  cd /Users/用户名/Desktop/

  // 创建工作目录
  mkdir Test

  // 进入工作目录
  cd Test

  // 创建OC程序文件
  touch tmp.m

## 编辑源码
  // 打开文件(从应用商店提前安装好Xcode)
  open tmp.m
 ```objc
 #import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
 ```
## 使用Clang命令行生成可执行文件
详情：`clang --help`
然后在控制台Terminal输入编译OC程序的控制行命令,得到名称为a.out：
```
cc 文件名 －framework Foundation 
cc -framework Foundation 文件名 
```
-o 参数 可以自定义一个名字，来代替a.out
-g 参数 支持lldb下查看文件/函数源码`list 文件名`/`list 函数名`。
```
cc -framework Foundation tmp.m -g -o tmp.app 
```
## 开始执行
```
./a.out  或  ./`tmp.app`
```
## 使用lldb调试`tmp.app`
```
lldb tmp.app   //lldb调试器装载tmp.app
(lldb)breakpoint set -f Tmp.m -l 6 //设置断点
(lldb)run   //启动tmp.app / 启动后，程序会停在上述设置的断点位置，这是便可以愉快的断点调试了
```

## swift源码文件编译和lldb调试
1. 新建`tmp.swift`文件。 
```
vi tmp.swift
```
2. 写入测试代码
```
let i = 99
let nnn = “nihao”
print(“\(i)====\(nn)”)
```
3. 使用`swiftc`编译`tmp.swift`
```
swiftc tmp.swift -g -o swift.app
```
4. lldb 装载`swift.app`设置断点
```
lldb swift.app			//装载app
(lldb)breakpoint set -f tmp.swift -d 2  /设置断点
(lldb)run		 //启动app
(lldb)c/n/s  //断点操作：继续/单步/进入
```








# 扩展
[sqlite3命令](http://www.runoob.com/sqlite/sqlite-create-database.html)
```
sqlite3 dbname.db //创建数据库
.help  //帮助文档
sqlite3 dbname.db .dump > archiveDB.sql //归档数据库到文本文件中
sqlite3 dbname.db < archiveDB.sql  //恢复文本数据库，到sqlite中
.databases //查看所有数据库信息
.tables  //查看数据库中的表
.schema tablename  //查看表结构

```
# xcodebuild
[Mach-O可执行文件](https://github.com/huos3203/BookObjc/blob/master/publish/issue6/issue-6-3-yishuiliunian.md)
xcodebuild只是xrun的一个软链接,但是这一链却有了不同的分工:xcodebuild负责将工程源文件编译成xxx.app；
xcrun负责给xxx.app(签名并)打包成xxx.ipa
