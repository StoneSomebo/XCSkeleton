//
//  ZYSkeletonTopicDetailCell.m
//  AFNetworking
//
//  Created by zuiyou on 2019/5/21.
//

#import "ZYSkeletonTopicDetailCell.h"

@implementation ZYSkeletonTopicDetailCell

+ (CGFloat)cellHeight {
    return 129;
}

- (void)configViewWithNightVersion:(BOOL)isNightVersion {
    
    self.avatarView.frame = CGRectMake(13, 26, 40, 40);
    self.firstLine.frame  = CGRectMake(64, 28, 74, 12);
    self.secondLine.frame = CGRectMake(64, 52, 49, 12);
    self.thirdLine.frame  = CGRectMake(13, 79, kSkeletonScreenWidth - 26, 12);
    self.fourthLine.frame = CGRectMake(13, 104, kSkeletonScreenWidth - 64, 12);
    
    [super configViewWithNightVersion:isNightVersion];
}

@end
