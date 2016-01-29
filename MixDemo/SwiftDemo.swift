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
        
        vc.logMe("log me", logYou: "log you")
        
        ViewController.ocStaticFunc("swift call oc static func")
        
        let args: [CVarArgType] = ["i'm", " showhilllee"]
        withVaList(args) {
            (pointer: CVaListPointer) in
            return ViewController.stringParams("%@,%@", args:pointer)
        }
    }
    
    public static func swiftStaticFunc(log: NSString) {
        print(log);
    }
    
}