//
//  Worker.swift
//  Colorist
//
//  Created by Станислав Шияновский on 10/9/19.
//  Copyright © 2019 Станислав Шияновский. All rights reserved.
//

import UIKit

@objc open class Worker: NSObject {

    @objc public func makeColor() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0..<1),
                       green: CGFloat.random(in: 0..<1),
                       blue: CGFloat.random(in: 0..<1), alpha: 1.0)
    }
}
