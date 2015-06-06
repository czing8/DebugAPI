//
//  ViewController.m
//  VRollLabel
//
//  Created by Vols on 15/6/5.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "ViewController.h"
#import "VRollLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    VRollLabel * rollLabel = [[VRollLabel alloc] initWithFrame:CGRectMake(20, 100, 100, 30)];
    rollLabel.font = [UIFont systemFontOfSize:14];
    rollLabel.text = @"fahgegahpegoaepgeoga";
    rollLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:rollLabel];
    
    rollLabel.backgroundColor = [UIColor orangeColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
