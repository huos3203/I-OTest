#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   @autoreleasepool {
       // insert code here...
      NSUInteger count = 99;  
      NSString *objects = @"red balloons";          
      NSLog(@"Hello%lu, World!%@",count,objects); 
   }
   return 0;
}
