//
//  ZYSkeletonPostDetailCell.m
//  AFNetworking
//
//  Created by zuiyou on 2019/5/21.
//

#import "ZYSkeletonPostDetailCell.h"

@implementation ZYSkeletonPostDetailCell

+ (CGFloat)cellHeight {
    return 99;
}

- (void)configView {
    
    self.avatarView.frame  = CGRectMake(13, 26, 34, 34);
    self.firstLine.frame   = CGRectMake(58, 28, kSkeletonScreenWidth - 163, 12);
    self.secondLine.frame  = CGRectMake(58, 52, kSkeletonScreenWidth - 213, 12);
    self.thirdLine.frame   = CGRectMake(58, 76, kSkeletonScreenWidth - 199, 12);
    self.fourthLine.hidden = YES;
    
    [super configView];
}

@end
