//
//  BKHomeVC.m
//  BKMainModule_Example
//
//  Created by i2p on 2021/6/14.
//  Copyright © 2021 xwzx100200@163.com. All rights reserved.
//

#import "BKHomeVC.h"
#import <BKResource/NSString+BKSourceJsonStr.h>

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
}


@end
