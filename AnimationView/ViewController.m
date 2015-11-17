//
//  ViewController.m
//  AnimationView
//
//  Created by ln on 15/11/10.
//  Copyright © 2015年 fancyLi. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Spring.h"
@interface ViewController ()
{
    CALayer *layer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(20, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"点我啊！" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.layer.cornerRadius = btn.frame.size.width/2;
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
-(void)click:(UIButton*)btn{

    
      [btn setSpringEffectAndDisplayTitle:@"还真点啊！" repeatCount:2];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
