//
//  UIImageFromUIColorExtension.swift
//  SwiftCommons
//
//  Created by Marc Dermejian on 23/05/2016.
//  Copyright © 2016 Marc Dermejian. All rights reserved.
//

import Foundation

public extension UIImage {
	private func imageWithColor(color: UIColor) -> UIImage {
		let rect = CGRectMake(0.0, 0.0, 1.0, 1.0)
		UIGraphicsBeginImageContext(rect.size)
		let context = UIGraphicsGetCurrentContext()
		
		CGContextSetFillColorWithColor(context, color.CGColor)
		CGContextFillRect(context, rect)
		
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return image
	}
}