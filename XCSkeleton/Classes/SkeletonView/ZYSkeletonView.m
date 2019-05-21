//
//  ZYSkeletonView.m
//  tieba
//
//  Created by zuiyou on 2019/4/9.
//  Copyright © 2019年 XiaoChuan Technology Co.,Ltd. All rights reserved.
//

#import "ZYSkeletonView.h"
#import "ZYSkeletonBaseCell.h"
#import "ZYSkeletonModel.h"

#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ZYSkeletonView ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *dataSource;
@property (nonatomic,assign) ZYSkeletonViewType type;

@end


@implementation ZYSkeletonView


-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _type = ZYSkeletonPostDetail;
        [self configData];
        [self setupSubviews];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame type:(ZYSkeletonViewType)type {
    if (self = [super initWithFrame:frame]) {
        _type = type;
        [self configData];
        [self setupSubviews];
    }
    return self;
}

- (void)configData {
    
    NSMutableArray *muDataSource = [NSMutableArray array];
    CGFloat height = 0;
    if (self.type == ZYSkeletonPostDetail || self.type == ZYSkeletonTopicDetailShowCommentFirst) {
        
        if (self.type == ZYSkeletonPostDetail) {
            ZYSkeletonModel *headTopModel = [[ZYSkeletonModel alloc] initWithType:ZYSkeletonPostDetailHeadTop];
            [muDataSource addObject:headTopModel];
            
            Class headCellClass = [headTopModel cellClass];
            if ([headCellClass respondsToSelector:@selector(cellHeight)]) {
                height += [headCellClass cellHeight];
            }
            
            ZYSkeletonModel *headMiddleModel = [[ZYSkeletonModel alloc] initWithType:ZYSkeletonPostDetailHeadMiddle];
            [muDataSource addObject:headMiddleModel];
            
            Class middleCellClass = [headMiddleModel cellClass];
            if ([middleCellClass respondsToSelector:@selector(cellHeight)]) {
                height += [middleCellClass cellHeight];
            }
        }
        
        ZYSkeletonModel *headBottomModel = [[ZYSkeletonModel alloc] initWithType:ZYSkeletonPostDetailHeadBottom];
        [muDataSource addObject:headBottomModel];
        
        Class bottomCellClass = [headBottomModel cellClass];
        if ([bottomCellClass respondsToSelector:@selector(cellHeight)]) {
            height += [bottomCellClass cellHeight];
        }
        
        NSInteger count = 0;  // 防止死循环
        while (height < kScreenHeight && count < 20) {
            count ++;
            ZYSkeletonModel *model = [[ZYSkeletonModel alloc] initWithType:ZYSkeletonPostDetailNormalCell];
            [muDataSource addObject:model];
            
            Class cellClass = [model cellClass];
            if ([cellClass respondsToSelector:@selector(cellHeight)]) {
                height += [cellClass cellHeight];
            }
        }
    
    } else if (self.type == ZYSkeletonTopicDetail) {
        
        ZYSkeletonModel *model = [[ZYSkeletonModel alloc] initWithType:ZYSkeletonTopicDetailHead];
        [muDataSource addObject:model];
        
        Class cellClass = [model cellClass];
        if ([cellClass respondsToSelector:@selector(cellHeight)]) {
            height += [cellClass cellHeight];
        }
        
        NSInteger count = 0;  // 防止死循环
        while (height < kScreenHeight && count < 20) {
            count ++;
            ZYSkeletonModel *model = [[ZYSkeletonModel alloc] initWithType:ZYSkeletonTopicDetailNormalCell];
            [muDataSource addObject:model];
            
            Class cellClass = [model cellClass];
            if ([cellClass respondsToSelector:@selector(cellHeight)]) {
                height += [cellClass cellHeight];
            }
        }
    }
    
    self.dataSource = muDataSource.copy;
}

- (void)setupSubviews {
    
    self.backgroundColor = [UIColor whiteColor];

    self.tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    
    NSMutableArray *cellClassNames = [NSMutableArray arrayWithCapacity:self.dataSource.count];
    for (ZYSkeletonModel *model in self.dataSource) {
        if (![cellClassNames containsObject:NSStringFromClass([model cellClass])]) {
            [self.tableView registerClass:[model cellClass] forCellReuseIdentifier:NSStringFromClass([model cellClass])];
        }
    }
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.scrollEnabled = NO;
    [self addSubview:self.tableView];
}

#pragma mark UITableViewDelegate,UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZYSkeletonModel *model = self.dataSource[indexPath.row];
    Class cellClass = [model cellClass];
    ZYSkeletonBaseCell *baseCell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(cellClass) forIndexPath:indexPath];
    if ([baseCell respondsToSelector:@selector(configView)]) {
        [baseCell configView];
    }
    return baseCell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZYSkeletonModel *model = self.dataSource[indexPath.row];
    Class cellClass = [model cellClass];
    if ([cellClass respondsToSelector:@selector(cellHeight)]) {
        return [cellClass cellHeight];
    }
    return 0;
}



@end
