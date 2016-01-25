//
//  SwiftDemo.swift
//  MixDemo
//
//  Created by apple on 16/1/25.
//  Copyright © 2016年 showhillle. All rights reserved.
//

import Foundation

@objc(SwiftDemo)

public class SwiftDemo : NSObject {
    
    public func logMe() {
        print("log me");
        
        let vc = ViewController()
        vc.logYou()
    }
    
}