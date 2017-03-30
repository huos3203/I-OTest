#import <Foundation/Foundation.h>
int main(int arg, char*argv[])
{
    @autoreleasepool {
        // 使用NSData读取指定URL对应的数据
        NSData* data = [NSData dataWithContentsOfURL:
                        [NSURL URLWithString:@"https://www.baidu.com"]];
        NSLog(@"%ld" , [data length]);
        // 定义一个长度为100的数组
        char buffer[100];
        // 将NSData指定范围的数据读入数组
        [data getBytes:buffer range: NSMakeRange(103, 100)];
        // 输出数组的内容
        NSLog(@"%s" , buffer);
        // 直接将NSData的数据用UTF-8的格式转换字符串
        NSString* content = [[NSString alloc] initWithData:data
                                                  encoding:NSUTF8StringEncoding];
        NSLog(@"----------输出网页内容---------");
        NSLog(@"%@" , content);
    }
}
