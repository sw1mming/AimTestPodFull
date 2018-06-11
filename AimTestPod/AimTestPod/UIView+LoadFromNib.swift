//
//  UIView+LoadFromNib.swift
//  AimprosoftChat
//
//  Created by Serg Melnik on 12/9/15.
//  Copyright © 2015 Serg Melnik. All rights reserved.
//

import UIKit

extension UIView {

    static public var reuseIdentifier: String {
        return className()
    }

    static public func nib() -> UINib {
        return UINib.init(nibName: className(), bundle: nil)
    }
    
    static public func view() -> AnyObject {
        return Bundle.main.loadNibNamed(self.className(), owner: nil, options: nil)?.first as! UIView
    }

    static public func kind() -> String {
        return className()
    }
}
