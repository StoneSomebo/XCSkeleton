//
//  ZYSkeletonModel.h
//  tieba
//
//  Created by zuiyou on 2019/4/9.
//  Copyright © 2019年 XiaoChuan Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ZYSkeletonModelType) {
    ZYSkeletonTopicDetailHead = 0,
    ZYSkeletonTopicDetailNormalCell,
    ZYSkeletonPostDetailHeadTop,
    ZYSkeletonPostDetailHeadMiddle,
    ZYSkeletonPostDetailHeadBottom,
    ZYSkeletonPostDetailNormalCell
};

@interface ZYSkeletonModel : NSObject

- (instancetype)initWithType:(ZYSkeletonModelType)type;

@property (nonatomic, assign) ZYSkeletonModelType type;
@property (nonatomic, assign) BOOL isNightVersion;      // 是否是夜间模式，默认是NO

- (Class)cellClass;

@end

NS_ASSUME_NONNULL_END
