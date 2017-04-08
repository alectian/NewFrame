//
//  BaseModel.m
//  NewFrame
//
//  Created by iMac on 17/3/23.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

+ (instancetype)modelWithKeyValues:(NSDictionary *)dict{
    return dict != nil?[self yy_modelWithJSON:dict]:nil;
}

@end
