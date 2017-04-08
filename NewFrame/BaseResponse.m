//
//  BaseResponse.m
//  NewFrame
//
//  Created by iMac on 17/3/23.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "BaseResponse.h"

@implementation BaseResponse

@end

@implementation ResHome

- (void)setData:(NSArray *)data{
    data != nil?(_data = [NSArray yy_modelArrayWithClass:[ModelHome class] json:data]):(_data = nil);
}

@end

