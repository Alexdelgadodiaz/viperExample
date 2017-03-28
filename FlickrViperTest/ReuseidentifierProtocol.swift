//
//  ReuseidentifierProtocol.swift
//  FlickrViperTest
//
//  Created by Константин on 25.08.16.
//  Copyright © 2016 Константин. All rights reserved.
//

import UIKit

public protocol ReuseIdentifierProtocol: class {
    //Get identifier from class
    static var defaultReuseIdentifier: String { get }
}

public extension ReuseIdentifierProtocol where Self: UIView {
    static var defaultReuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
