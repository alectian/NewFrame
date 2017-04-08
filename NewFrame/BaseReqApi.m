//
//  BaseReqApi.m
//  NewFrame
//
//  Created by iMac on 17/3/23.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "BaseReqApi.h"

@implementation BaseReqApi

- (void)startReqForFinishBlockWithSuccess:(void (^)(id success))success failure:(void (^)(YTKBaseRequest *failure))failure{
    [self startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSDictionary *dict = [request.responseString objectFromJSONString];
        
        success(dict);
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
        failure(request);
    }];
}

@end
