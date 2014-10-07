//
//  QYCar.m
//  CarDemo
//
//  Created by qiudushu on 14-10-7.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "QYCar.h"
# import "QYTire.h"
#import "QYEngine.h"

@implementation QYCar
-(QYCar *)init
{
    _engine = [QYEngine new];
    for (int i=0; i <4; i ++) {
        _tires[i] = [QYTire new];
    }
    return self;
}

-(void)print
{
    NSLog(@"I'm a QYCar .");
    NSLog(@"my engine:%@",_engine);
    
    for (int i=0; i <4; i++) {
        NSLog(@"my tire %d : %@",i,_tires[i]);
    }
}
-(NSString *)description
{
    return @"I am a QYcar .";
}

-(void)setEngine:(QYEngine *)engine
{
    _engine = engine;
}
-(void)setTire:(QYTire *)tire atIndex:(int)index
{
    _tires[index] = tire;
}
@end
