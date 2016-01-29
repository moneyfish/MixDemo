//
//  ViewController.h
//  MixDemo
//
//  Created by apple on 16/1/25.
//  Copyright © 2016年 showhillle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (void) logYou;

- (void) logMe:(NSString*)logMe logYou:(NSString*)logYou;

+ (void) ocStaticFunc:(NSString*)log;

+ (void) stringParams:(NSString*)params args:(va_list)args;

@end

