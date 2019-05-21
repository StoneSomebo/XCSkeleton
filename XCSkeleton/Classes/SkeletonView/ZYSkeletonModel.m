//
//  ZYSkeletonModel.m
//  tieba
//
//  Created by zuiyou on 2019/4/9.
//  Copyright © 2019年 XiaoChuan Technology Co.,Ltd. All rights reserved.
//

#import "ZYSkeletonModel.h"
#import "ZYSkeletonPostDetailCell.h"
#import "ZYSkeletonPostDetailHeadTopCell.h"
#import "ZYSkeletonPostDetailHeadMiddleCell.h"
#import "ZYSkeletonPostDetailHeadBottomCell.h"
#import "ZYSkeletonTopicDetailHeadCell.h"
#import "ZYSkeletonTopicDetailCell.h"

@implementation ZYSkeletonModel

-(instancetype)initWithType:(ZYSkeletonModelType)type {
    if (self = [super init]) {
        _type = type;
#ifdef DEBUG
        _isNightVersion = YES;
#endif
    }
    return self;
}

-(Class)cellClass {
    switch (self.type) {
        case ZYSkeletonTopicDetailHead:
            return [ZYSkeletonTopicDetailHeadCell class];
            break;
        case ZYSkeletonTopicDetailNormalCell:
            return [ZYSkeletonTopicDetailCell class];
            break;
        case ZYSkeletonPostDetailHeadTop:
            return [ZYSkeletonPostDetailHeadTopCell class];
            break;
        case ZYSkeletonPostDetailHeadMiddle:
            return [ZYSkeletonPostDetailHeadMiddleCell class];
            break;
        case ZYSkeletonPostDetailHeadBottom:
            return [ZYSkeletonPostDetailHeadBottomCell class];
            break;
        case ZYSkeletonPostDetailNormalCell:
            return [ZYSkeletonPostDetailCell class];
            break;
        default:
            return [UITableViewCell class];
            break;
    }
    return [UITableViewCell class];
}


@end
