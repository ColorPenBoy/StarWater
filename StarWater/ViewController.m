//
//  ViewController.m
//  StarWater
//
//  Created by 张强 on 15/7/2.
//  Copyright (c) 2015年 ColorPen. All rights reserved.
//

#import "ViewController.h"
#import "FiveStarImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FiveStarImageView *image=[[FiveStarImageView alloc]initWithFrame:CGRectMake(40, 84, 37, 36) withColor:[UIColor whiteColor]];
    [self.view addSubview:image];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
