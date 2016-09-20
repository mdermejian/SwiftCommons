//
//  UIColorFromRGBExtension.swift
//  SwiftCommons
//
//  Created by Marc Dermejian on 27/04/2016.
//  Copyright © 2016 Marc Dermejian. All rights reserved.
//

import UIKit

public extension UIColor {
	public convenience init(rgb: UInt) {
		self.init(
			red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
			green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
			blue: CGFloat(rgb & 0x0000FF) / 255.0,
			alpha: CGFloat(1.0)
		)
	}
}
