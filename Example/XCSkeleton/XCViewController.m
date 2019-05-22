//
//  XCViewController.m
//  XCSkeleton
//
//  Created by 1135447344@qq.com on 05/07/2019.
//  Copyright (c) 2019 1135447344@qq.com. All rights reserved.
//

#import "XCViewController.h"
#import "ZYSkeletonView.h"

@interface XCViewController ()

@end

@implementation XCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    ZYSkeletonView *skeletonView = [[ZYSkeletonView alloc] initWithFrame:self.view.bounds type:ZYSkeletonPostDetail isNightVersion:YES];
    [self.view addSubview:skeletonView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
