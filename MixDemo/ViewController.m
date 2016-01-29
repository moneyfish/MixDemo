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
    
    [SwiftDemo swiftStaticFunc:@"oc call swift static func"];
}

- (void)logYou {
    NSLog(@"log you");
}

- (void)logMe:(NSString *)logMe logYou:(NSString *)logYou {
    NSLog(@"%@--%@", logMe, logYou);
}

+ (void)ocStaticFunc:(NSString *)log {
    NSLog(@"%@", log);
}

+ (void) stringParams:(NSString *)params args:(va_list)args {
    
    va_list args_copy;
    
    __va_copy(args_copy,args);
    NSMutableString* format = [NSMutableString stringWithString:@""];
    while (va_arg(args, NSString*))
    {
        [format appendString:@"%@,"];
    }
    va_end(args);
    
    if(format.length>0)
        [format deleteCharactersInRange:NSMakeRange(format.length-1,1)];
    
    NSString* newFormat = [NSString stringWithFormat:@"%@",format];
    NSString * result = [[NSString alloc]initWithFormat:newFormat arguments:args_copy];
    va_end(args_copy);
    NSLog(@"%@", result);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
