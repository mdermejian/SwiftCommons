//
//  UIImageViewFromURLExtension.swift
//  SwiftCommons
//
//  Created by Marc Dermejian on 06/05/2016.
//  Copyright © 2016 Marc Dermejian. All rights reserved.
//

import Foundation

public extension UIImageView {
	
	public func imageFromUrlString(urlString: String, placeholderImage: UIImage?) {
		
		image = placeholderImage
		if let url = NSURL(string: urlString) {
			imageFromUrl(url, placeholderImage: placeholderImage)
		}
	}
	
	public func imageFromUrl(url: NSURL, placeholderImage: UIImage?) {
		
		image = placeholderImage
		
		let task = NSURLSession.sharedSession().dataTaskWithURL(url) {
			(data, response, error) in
			dispatch_async(dispatch_get_main_queue(), {
				self.image = UIImage(data: data!)
			})
		}
		task.resume()
	}
}