//
//  ReqTest.h
//  NewFrame
//
//  Created by iMac on 17/3/23.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "BaseReqApi.h"

@interface ReqTest : BaseReqApi

- (instancetype)initWithCateID:(NSString *)cateID
                       SortNum:(NSNumber *)sortNum
                       PageNum:(NSInteger )pageNum
                      PageSize:(NSInteger )pageSize
                       KeyWord:(NSString *)keyWord;

@end
