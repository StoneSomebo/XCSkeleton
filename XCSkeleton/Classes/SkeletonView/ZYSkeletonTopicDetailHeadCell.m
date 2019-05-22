//
//  ZYSkeletonTopicDetailHeadCell.m
//  AFNetworking
//
//  Created by zuiyou on 2019/5/21.
//

#import "ZYSkeletonTopicDetailHeadCell.h"

@implementation ZYSkeletonTopicDetailHeadCell

+ (CGFloat)cellHeight {
    return 182;
}

- (void)configViewWithNightVersion:(BOOL)isNightVersion{
    
    self.avatarView.frame  = CGRectMake(15, 5, 81, 81);
    self.firstLine.frame   = CGRectMake(107, 15, 74, 12);
    self.secondLine.frame  = CGRectMake(107, 39, 49, 12);
    self.thirdLine.frame   = CGRectMake(107, 63, kSkeletonScreenWidth - 162, 12);
    self.fourthLine.hidden = YES;
    
    [super configViewWithNightVersion:isNightVersion];
    
    if (isNightVersion) {
        self.backgroundColor = [UIColor colorWithRed:31.0 / 255.0 green:31.0 / 255.0 blue:42.0 / 255.0 alpha:1];
    } else {
        self.backgroundColor = [UIColor colorWithRed:231.0 / 255.0 green:231.0 / 255.0 blue:231.0 / 255.0 alpha:0.5];
    }
    self.avatarView.layer.cornerRadius = 3;
}

@end
