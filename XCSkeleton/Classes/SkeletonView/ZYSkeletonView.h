//
//  ZYSkeletonView.h
//  tieba
//
//  Created by zuiyou on 2019/4/9.
//  Copyright © 2019年 XiaoChuan Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ZYSkeletonViewType) {
    ZYSkeletonPostDetail,
    ZYSkeletonPostDetailShowCommentFirst,
    ZYSkeletonTopicDetail
};

NS_ASSUME_NONNULL_BEGIN

@interface ZYSkeletonView : UIView

- (instancetype)initWithFrame:(CGRect)frame type:(ZYSkeletonViewType)type isNightVersion:(BOOL)isNightVersion;

@end

NS_ASSUME_NONNULL_END
