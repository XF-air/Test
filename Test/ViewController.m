//
//  ViewController.m
//  Test
//
//  Created by xiaofeng on 2020/1/1.
//  Copyright © 2020 xiaofeng. All rights reserved.
//

#import "ViewController.h"
#import "Test-Swift.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"这是第一个控制器";
    
    _btn = ({
        UIButton *btn = [UIButton new];
        btn.backgroundColor = [UIColor redColor];
        btn.frame = CGRectMake(100, 100, 100, 100);
        [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        btn;
    });
}

- (void)btnClick
{
    TestViewController *test = [TestViewController new];
    test.navigationItem.title = @"这是第二个控制器";
    test.block = ^(NSInteger str) {
        NSLog(@"这是打印传过来的值是%zd",str);
    };
//    [self presentViewController:test animated:YES completion:nil];
    [self.navigationController pushViewController:test animated:YES];
}


@end
