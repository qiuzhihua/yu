//
//  main.m
//  CarDemo
//
//  Created by qiudushu on 14-10-7.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYCar.h"
#import "QYEngine.h"
#import "QYTire.h"
int main(int argc, const char * argv[])
{
    QYCar *firstCar = [QYCar new ];
    
    [firstCar print];
    NSLog (@"--->%@",firstCar);

    return 0;
}

