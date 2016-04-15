//
//  UsefulFunctions.swift
//  QuickBloxTest
//
//  Created by Marc Dermejian on 30/03/2016.
//  Copyright © 2016 Fexco Software Group. All rights reserved.
//

import UIKit


public func delay(seconds seconds: Double, completion:()->()) {
    let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
    
    dispatch_after(popTime, dispatch_get_main_queue()) {
        completion()
    }
}
