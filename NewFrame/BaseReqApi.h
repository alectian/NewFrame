//
//  BaseReqApi.h
//  NewFrame
//
//  Created by iMac on 17/3/23.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

@interface BaseReqApi : YTKRequest

- (void)startReqForFinishBlockWithSuccess:(void(^)(id success))success failure:(void(^)(YTKBaseRequest *failure))failure;

@end
