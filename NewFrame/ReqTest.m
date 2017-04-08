//
//  ReqTest.m
//  NewFrame
//
//  Created by iMac on 17/3/23.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "ReqTest.h"

@implementation ReqTest{
    NSString *_cateID;
    NSNumber *_sortNum;
    NSInteger _pageNum;
    NSInteger _pageSize;
    NSString *_keyWord;
}

/**
 *
 */
- (instancetype)initWithCateID:(NSString *)cateID
                       SortNum:(NSNumber *)sortNum
                       PageNum:(NSInteger )pageNum
                      PageSize:(NSInteger )pageSize
                       KeyWord:(NSString *)keyWord {
    if (self = [super init]) {
        _cateID = cateID;
        _sortNum = sortNum;
        _pageNum = pageNum;
        _pageSize = 20;
        _keyWord = keyWord;
    }
    return self;
}



-(NSString *)requestUrl{
    return @"?/api/goods/getlist";
}


-(id)requestArgument{
    if (_keyWord == nil) {
        return @{@"cateid":_cateID,
                 @"or":_sortNum,
                 @"p":@(_pageNum)
                 };
    }
    return @{@"p":@(_pageNum)
             ,@"keyword":_keyWord
             };
}

@end
