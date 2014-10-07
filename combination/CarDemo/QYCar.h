//
//  QYCar.h
//  CarDemo
//
//  Created by qiudushu on 14-10-7.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYEngine.h"
#import "QYTire.h"

@interface QYCar : NSObject
{
    //成员变量
    
    //4个轮胎对象
    QYEngine *_engine;
    //一个发动机
    QYTire  *_tires[4];
}

//方法
//换发动机
-(void)setEngine:(QYEngine *)engine;

//换轮胎
-(void)setTire:(QYTire *)tire atIndex:(int)index;

//描述汽车
-(void)print;
@end
