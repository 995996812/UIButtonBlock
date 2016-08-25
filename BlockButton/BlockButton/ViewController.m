//
//  ViewController.m
//  BlockButton
//
//  Created by 王鹏华 on 16/8/25.
//  Copyright © 2016年 condentast. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Block.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    [button setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:button];
    
    [button addClickMethod:^(UIButton *button) {
        NSLog(@"1111111");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
