//
//  ZYSkeletonPostDetailHeadTopCell.m
//  AFNetworking
//
//  Created by zuiyou on 2019/5/21.
//

#import "ZYSkeletonPostDetailHeadTopCell.h"

@implementation ZYSkeletonPostDetailHeadTopCell

+ (CGFloat)cellHeight {
    return 103;
}

- (void)configView {
    
    self.avatarView.frame = CGRectMake(13, 13, 40, 40);
    self.firstLine.frame  = CGRectMake(64, 15, 74, 12);
    self.secondLine.frame = CGRectMake(64, 39, 49, 12);
    self.thirdLine.frame  = CGRectMake(13, 66, kSkeletonScreenWidth - 26, 12);
    self.fourthLine.frame = CGRectMake(13, 91, kSkeletonScreenWidth - 64, 12);
    
    [super configView];
}

@end
