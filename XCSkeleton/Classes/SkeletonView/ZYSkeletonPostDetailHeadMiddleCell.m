//
//  ZYSkeletonPostDetailHeadMiddleCell.m
//  AFNetworking
//
//  Created by zuiyou on 2019/5/21.
//

#import "ZYSkeletonPostDetailHeadMiddleCell.h"

@implementation ZYSkeletonPostDetailHeadMiddleCell

+ (CGFloat)cellHeight {
    return 126;
}

- (void)configViewWithNightVersion:(BOOL)isNightVersion {
    
    self.firstLine.hidden  = YES;
    self.secondLine.hidden = YES;
    self.thirdLine.hidden  = YES;
    self.fourthLine.hidden = YES;
    self.avatarView.frame = CGRectMake(13, 26, kSkeletonScreenWidth - 26, 100);
    
    [super configViewWithNightVersion:isNightVersion];
    
    self.avatarView.layer.cornerRadius = 12;
}

@end
