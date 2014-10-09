//
//  main.m
//  FoundationDemo
//
//  Created by qingyun on 14-10-9.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    // 创建数组
    NSArray *arr1 = nil;
//    NSLog(@"%p", arr1);
    NSObject *obj = [NSObject new];
    arr1 = [NSArray arrayWithObjects:@"One", @"Two", @"Three", obj, nil];
//    NSLog(@"%p", arr1);
    NSLog(@"arr1: %@", arr1);
    
    // 推荐下面的新语法
    NSString *str = @"Hello";
    NSArray *arr2 = @[@"zhangsan", @"lisi", @"wangwu", @"zhaoliu" ,@"tianqi", str];
    NSLog(@"arr2: %@", arr2);
    
    // 访问数组成员 objectAtIndex
//    NSObject *tmpObj = [arr1 objectAtIndex:3];
    id tmpObj = [arr1 objectAtIndex:3];
    NSLog(@"tmpObj: %@", tmpObj);
    
    // 推荐使用下面的新语法
    tmpObj = arr2[2];
    NSLog(@"arr2[2]: %@", tmpObj);
    
    // 可变数组
    NSMutableArray *firstArr = [NSMutableArray arrayWithCapacity:30];
    // 添加
    [firstArr addObject:@"One"];
    [firstArr addObject:@"Two"];
    [firstArr addObject:@"Three"];
    [firstArr addObject:@"Four"];
    [firstArr addObject:@"Five"];
    
    NSLog(@"The Mutable Array: %@", firstArr);
    
    NSMutableArray *secArr = [NSMutableArray arrayWithArray:arr2];
    NSLog(@"secArr: %@", secArr);
    
    // 删除
    [secArr removeObject:@"tianqi"];
    NSLog(@"==secArr: %@", secArr);
    [secArr removeObjectAtIndex:2];
    NSLog(@"===secArr: %@", secArr);
    
    // C语言遍历数组
    NSUInteger number = [secArr count];
    for (int i = 0; i < number; i++) {
        id obj = secArr[i];
        NSLog(@"%@", obj);
    }
    
    return 0;
}

