//
//  BezierPathsView.swift
//  QuickBloxTest
//
//  Created by Marc Dermejian on 15/03/2016.
//  Copyright © 2016 Fexco Software Group. All rights reserved.
//

import UIKit

public class BezierPathsView: UIView {

    private var bezierPaths = [String:UIBezierPath]()
    
    public func setPath(path: UIBezierPath?, named name: String){
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    override public func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths{
            path.stroke()
        }
    }
}
