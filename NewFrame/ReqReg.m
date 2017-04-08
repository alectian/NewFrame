//
//  ReqReg.m
//  NewFrame
//
//  Created by iMac on 17/3/28.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "ReqReg.h"

@implementation ReqReg{
    NSString *_tel;
    NSString *_SignName;
    NSString *_TemplateCode;
    NSString *_ParamString;
    NSString *_queryString;
}

- (instancetype)initWith:(NSString *)tel SignName:(NSString *)SignName TemplateCode:(NSString *)TemplateCode ParamString:(NSString *)ParamString{
    if (self = [super init]) {
        _tel = tel;
        _SignName = SignName;
        _TemplateCode = TemplateCode;
        _ParamString = ParamString;
    }
    return self;
}

- (instancetype)initWithQuery:(NSString *)query{
    if (self = [super init]) {
        _queryString = query;
    }
    return self;
}

//- (NSArray<NSString *> *)requestAuthorizationHeaderFieldArray{
//    return @[@"Authorization",@"APPCODE d78f139759b241b8b10f6735df97faeb"];
//}

- (NSDictionary<NSString *,NSString *> *)requestHeaderFieldValueDictionary{
    return @{@"Authorization":@"APPCODE d78f139759b241b8b10f6735df97faeb"};
}

-(NSString *)requestUrl{
    return @"/singleSendSms";
}


-(id)requestArgument{
    //Action=SingleSendSms&SignName=阿里云短信服务&TemplateCode=SMS_1595010&RecNum=13622009648&ParamString={"no":"123456"}
//    NSDictionary *dict = @{
//                           @"SignName":_SignName,
//                           @"TemplateCode":_TemplateCode,
//                           @"RecNum":_tel,
//                           @"ParamString":_ParamString
//                           };
    
    return _queryString;
}


@end
