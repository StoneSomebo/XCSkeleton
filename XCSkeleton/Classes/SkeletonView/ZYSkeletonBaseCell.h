//
//  ZYSkeletonBaseCell.h
//  tieba
//
//  Created by zuiyou on 2019/4/9.
//  Copyright © 2019年 XiaoChuan Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBShimmeringView.h"
@class ZYSkeletonModel;

#define kSkeletonScreenWidth  [[UIScreen mainScreen] bounds].size.width
#define kSkeletonScreenHeight [[UIScreen mainScreen] bounds].size.height

NS_ASSUME_NONNULL_BEGIN

@interface ZYSkeletonBaseCell : UITableViewCell

@property (nonatomic, strong) UIView *avatarView;
@property (nonatomic, strong) UIView *firstLine;
@property (nonatomic, strong) UIView *secondLine;
@property (nonatomic, strong) UIView *thirdLine;
@property (nonatomic, strong) UIView *fourthLine;

@property (nonatomic, strong) FBShimmeringView *avatarShimmer;
@property (nonatomic, strong) FBShimmeringView *firstShimmer;
@property (nonatomic, strong) FBShimmeringView *secondShimmer;
@property (nonatomic, strong) FBShimmeringView *thirdShimmer;
@property (nonatomic, strong) FBShimmeringView *fourthShimmer;

- (void)configViewWithNightVersion:(BOOL)isNightVersion;
+ (CGFloat)cellHeight;

@end

NS_ASSUME_NONNULL_END
