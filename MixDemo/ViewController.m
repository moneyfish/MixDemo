//
//  ViewController.m
//  MixDemo
//
//  Created by apple on 16/1/25.
//  Copyright © 2016年 showhillle. All rights reserved.
//

#import "ViewController.h"
#import "MixDemo-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SwiftDemo* demo = [[SwiftDemo alloc] init];
    [demo logMe];
}

- (void)logYou {
    NSLog(@"log you");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
