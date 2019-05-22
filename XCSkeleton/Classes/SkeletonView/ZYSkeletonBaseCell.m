//
//  ZYSkeletonBaseCell.m
//  tieba
//
//  Created by zuiyou on 2019/4/9.
//  Copyright © 2019年 XiaoChuan Technology Co.,Ltd. All rights reserved.
//

#import "ZYSkeletonBaseCell.h"
#import "ZYSkeletonModel.h"

#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kSkeletonLeftMargin   15.0
#define kSkeletonTopMargin    15.0
#define kSkeletonAvatarWidth  40.0
#define kSkeletonBottomMargin 15.0

@interface ZYSkeletonBaseCell ()

@property (nonatomic, strong) UIView *avatarContentView;
@property (nonatomic, strong) UIView *firstContentView;
@property (nonatomic, strong) UIView *secondContentView;
@property (nonatomic, strong) UIView *thirdContentView;
@property (nonatomic, strong) UIView *fourthContentView;


@end


@implementation ZYSkeletonBaseCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupSubViews];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    return self;
}

- (void)setupSubViews {
    
    _avatarView = [[UIView alloc] initWithFrame:CGRectZero];
    [self addSubview:_avatarView];
    _avatarShimmer = [[FBShimmeringView alloc] initWithFrame:CGRectZero];
    _avatarShimmer.shimmering = YES;
    _avatarShimmer.shimmeringSpeed = 50;
    [_avatarView addSubview:_avatarShimmer];
    _avatarContentView = [[UIView alloc] initWithFrame:CGRectZero];
    _avatarContentView.backgroundColor = [UIColor colorWithRed:231.0 / 255.0 green:231.0 / 255.0 blue:231.0 / 255.0 alpha:1];
    _avatarShimmer.contentView = _avatarContentView;
    
    _firstLine = [[UIView alloc] initWithFrame:CGRectZero];
    [self addSubview:_firstLine];
    _firstShimmer = [[FBShimmeringView alloc] initWithFrame:CGRectZero];
    _firstShimmer.shimmering = YES;
    _firstShimmer.shimmeringSpeed = 300;
    [_firstLine addSubview:_firstShimmer];
    _firstContentView = [[UIView alloc] initWithFrame:CGRectZero];
    _firstContentView.backgroundColor = [UIColor colorWithRed:231.0 / 255.0 green:231.0 / 255.0 blue:231.0 / 255.0 alpha:0.5];
    _firstShimmer.contentView = _firstContentView;
    
    _secondLine = [[UIView alloc] initWithFrame:CGRectZero];
    [self addSubview:_secondLine];
    _secondShimmer = [[FBShimmeringView alloc] initWithFrame:CGRectZero];
    _secondShimmer.shimmering = YES;
    _secondShimmer.shimmeringSpeed = 300;
    [_secondLine addSubview:_secondShimmer];
    _secondContentView = [[UIView alloc] initWithFrame:CGRectZero];
    _secondContentView.backgroundColor = [UIColor colorWithRed:231.0 / 255.0 green:231.0 / 255.0 blue:231.0 / 255.0 alpha:0.5];
    _secondShimmer.contentView = _secondContentView;
    
    _thirdLine = [[UIView alloc] initWithFrame:CGRectZero];
    [self addSubview:_thirdLine];
    _thirdShimmer = [[FBShimmeringView alloc] initWithFrame:CGRectZero];
    _thirdShimmer.shimmering = YES;
    _thirdShimmer.shimmeringSpeed = 300;
    [_thirdLine addSubview:_thirdShimmer];
    _thirdContentView = [[UIView alloc] initWithFrame:CGRectZero];
    _thirdContentView.backgroundColor = [UIColor colorWithRed:231.0 / 255.0 green:231.0 / 255.0 blue:231.0 / 255.0 alpha:0.5];
    _thirdShimmer.contentView = _thirdContentView;
    
    _fourthLine = [[UIView alloc] initWithFrame:CGRectZero];
    [self addSubview:_fourthLine];
    _fourthShimmer = [[FBShimmeringView alloc] initWithFrame:CGRectZero];
    _fourthShimmer.shimmering = YES;
    _fourthShimmer.shimmeringSpeed = 300;
    [_fourthLine addSubview:_fourthShimmer];
    _fourthContentView = [[UIView alloc] initWithFrame:CGRectZero];
    _fourthContentView.backgroundColor = [UIColor colorWithRed:231.0 / 255.0 green:231.0 / 255.0 blue:231.0 / 255.0 alpha:0.5];
    _fourthShimmer.contentView = _fourthContentView;
}

#pragma mark API

+ (CGFloat)cellHeight {
    return 0;
}

- (void)configViewWithNightVersion:(BOOL)isNightVersion{
    
    if (isNightVersion) {
        self.backgroundColor = [UIColor colorWithRed:37.0 / 255.0 green:38.0 / 255.0 blue:52.0 / 255.0 alpha:1];
        _avatarContentView.backgroundColor = [UIColor colorWithRed:48.0 / 255.0 green:50.0 / 255.0 blue:67.0 / 255.0 alpha:1];
        _firstContentView.backgroundColor = [UIColor colorWithRed:48.0 / 255.0 green:50.0 / 255.0 blue:67.0 / 255.0 alpha:0.5];
        _secondContentView.backgroundColor = [UIColor colorWithRed:48.0 / 255.0 green:50.0 / 255.0 blue:67.0 / 255.0 alpha:0.5];
        _thirdContentView.backgroundColor = [UIColor colorWithRed:48.0 / 255.0 green:50.0 / 255.0 blue:67.0 / 255.0 alpha:0.5];
        _fourthContentView.backgroundColor = [UIColor colorWithRed:48.0 / 255.0 green:50.0 / 255.0 blue:67.0 / 255.0 alpha:0.5];
    }
    
    _avatarView.layer.cornerRadius  = _avatarView.frame.size.height / 2;
    _avatarView.layer.masksToBounds = YES;
    _firstLine.layer.cornerRadius   = _firstLine.frame.size.height / 2;
    _firstLine.layer.masksToBounds  = YES;
    _secondLine.layer.cornerRadius  = _firstLine.frame.size.height / 2;
    _secondLine.layer.masksToBounds = YES;
    _thirdLine.layer.cornerRadius   = _firstLine.frame.size.height / 2;
    _thirdLine.layer.masksToBounds  = YES;
    _fourthLine.layer.cornerRadius  = _firstLine.frame.size.height / 2;
    _fourthLine.layer.masksToBounds = YES;

    _avatarShimmer.frame = _avatarView.bounds;
    _firstShimmer.frame  = _firstLine.bounds;
    _secondShimmer.frame = _secondLine.bounds;
    _thirdShimmer.frame  = _thirdLine.bounds;
    _fourthShimmer.frame = _fourthLine.bounds;
}



@end
