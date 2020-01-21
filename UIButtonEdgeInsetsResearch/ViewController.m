//
//  ViewController.m
//  UIButtonEdgeInsetsResearch
//
//  Created by qiyu on 2020/1/21.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.button setTitle:@"关注" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    button.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 10);
    //加上上面代码button高度小于不加时，默认button.contentEdgeInsets = UIEdgeInsetsZero，即top,left,bottom,right全为0
    //为什么？
    //不应该是加与不加对高度没有影响吗？
    [self.button sizeToFit];
    self.button.center = self.view.center;
    [self.view addSubview:self.button];
}

@end
