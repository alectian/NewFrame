//
//  ReqReg.h
//  NewFrame
//
//  Created by iMac on 17/3/28.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "BaseReqApi.h"

@interface ReqReg : BaseReqApi

- (instancetype)initWith:(NSString *)tel SignName:(NSString *)SignName TemplateCode:(NSString *)TemplateCode ParamString:(NSString *)ParamString;

- (instancetype)initWithQuery:(NSString *)query;

@end
