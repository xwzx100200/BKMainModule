//
//  BKHomeVC.m
//  BKMainModule_Example
//
//  Created by i2p on 2021/6/14.
//  Copyright © 2021 xwzx100200@163.com. All rights reserved.
//

#import "BKHomeVC.h"
#import <BKResource/NSString+BKSourceJsonStr.h>
#import <BKMonitor/BKLogData.h>

@interface BKHomeVC ()

@end

@implementation BKHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn addTarget:self action:@selector(testJson) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:btn];
}

- (void)testJson {
    NSDictionary* dic = [NSString sourceJsonStrToDic:@"187data"];
    NSLog(@"%@",dic);
    
    [BKLogData insertLog:@"这是测试的日志，点击啊放假啊来开电视发了束带结发接收到打飞机啊老师对接放辣椒是打飞机阿里斯顿缴费了的发酵饲料打飞机啊乐山大佛发到上会计分录；氨基丁酸了放假爱上了多久发。"];
}


@end
