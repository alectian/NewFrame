//
//  BaseResponse.h
//  NewFrame
//
//  Created by iMac on 17/3/23.
//  Copyright © 2017年 ZoneTian. All rights reserved.
//

#import "BaseModel.h"

@interface BaseResponse : BaseModel

STRING_COPY *msg;
STRING_COPY *status;

@end

@interface ResHome : BaseResponse

ARRAY_STRONG *data;

@end


