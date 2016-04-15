//
//  UIColorRandomExtension.swift
//  QuickBloxTest
//
//  Created by Marc Dermejian on 15/03/2016.
//  Copyright © 2016 Fexco Software Group. All rights reserved.
//

import UIKit

public extension UIColor {
    public class var random: UIColor {
        switch arc4random() % 5 {
        case 0: return UIColor.greenColor()
        case 1: return UIColor.blueColor()
        case 2: return UIColor.orangeColor()
        case 3: return UIColor.redColor()
        case 4: return UIColor.purpleColor()
        default: return UIColor.blackColor()
        }
    }
}