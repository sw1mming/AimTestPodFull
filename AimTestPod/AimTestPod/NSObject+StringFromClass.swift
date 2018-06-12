//
//  NSObject+StringFromClass.swift
//  AimprosoftChat
//
//  Created by Serg Melnik on 5/30/16.
//  Copyright © 2016 Zee Softs. All rights reserved.
//

import Foundation

extension NSObject {
    static public func className() -> String {
        var className = String(describing: self)

        if className.contains("<") {
            let components = className.components(separatedBy: "<")
            
            if components.count > 0 {
                className = components[0]
            }
        }
        
        return className
    }
}
