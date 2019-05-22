//
//  ZYSkeletonPostDetailHeadBottomCell.m
//  AFNetworking
//
//  Created by zuiyou on 2019/5/21.
//

#import "ZYSkeletonPostDetailHeadBottomCell.h"

@implementation ZYSkeletonPostDetailHeadBottomCell

+ (CGFloat)cellHeight {
    return 153;
}

- (void)configViewWithNightVersion:(BOOL)isNightVersion {
    
    self.avatarView.frame = CGRectMake(13, 26, 57, 57);
    self.firstLine.frame  = CGRectMake(81, 37, 74, 12);
    self.secondLine.frame = CGRectMake(81, 60, 49, 12);
    self.thirdLine.frame  = CGRectMake(0, 109, kSkeletonScreenWidth, 7);
    self.fourthLine.frame = CGRectMake(13, 142, 75, 12);
    
    [super configViewWithNightVersion:isNightVersion];
    
    self.avatarView.layer.cornerRadius = 4;
    self.thirdLine.layer.cornerRadius = 0;
    self.thirdShimmer.shimmering = NO;
    if (isNightVersion) {
        self.thirdShimmer.contentView.backgroundColor = [UIColor colorWithRed:31.0 / 255.0 green:31.0 / 255.0 blue:42.0 / 255.0 alpha:1];
    } else {
        self.thirdLine.backgroundColor = [UIColor colorWithRed:231.0 / 255.0 green:231.0 / 255.0 blue:231.0 / 255.0 alpha:1];
    }
    
}

@end
