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
## 生成可执行文件
然后在控制台Terminal输入编译OC程序的控制行命令,得到名称为a.out：
```
cc 文件名 －framework Foundation 
cc -framework Foundation 文件名 
```
-o 参数 可以自定义一个名字，来代替a.out 
```
cc -framework Foundation tmp.m -o app 
```
## 开始执行
```
./a.out  或  ./app
```

