//
//  ViewController.m
//  自定义pop系统
//
//  Created by cyp on 16/6/19.
//  Copyright (c) 2016年 XY. All rights reserved.
//

#import "ViewController.h"
#import "CXToMoveViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第一页";
    // Push
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeSystem];
    pushButton.frame = CGRectMake(140, 200, 40, 40);
    [pushButton setTitle:@"Push" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}
- (void)push
{
    CXToMoveViewController* toView = [[CXToMoveViewController alloc] init];
    [self.navigationController pushViewController:toView animated:YES];
}

@end
