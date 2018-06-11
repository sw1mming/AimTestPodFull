//
//  Device.swift
//  AimprosoftChat
//
//  Created by Sergey Zaycev on 30.04.2018.
//  Copyright © 2018 aimprosoft. All rights reserved.
//

import UIKit

public struct Device {
    
    static public let IS_IPAD             = UIDevice.current.userInterfaceIdiom == .pad
    static public let IS_IPHONE           = UIDevice.current.userInterfaceIdiom == .phone
    static public let IS_RETINA           = UIScreen.main.scale >= 2.0
    
    static public let SCREEN_WIDTH        = Int(UIScreen.main.bounds.size.width)
    static public let SCREEN_HEIGHT       = Int(UIScreen.main.bounds.size.height)
    static public let SCREEN_MAX_LENGTH   = Int( max(SCREEN_WIDTH, SCREEN_HEIGHT) )
    static public let SCREEN_MIN_LENGTH   = Int( min(SCREEN_WIDTH, SCREEN_HEIGHT) )
    
    static public let IS_IPHONE_4_OR_LESS = IS_IPHONE && SCREEN_MAX_LENGTH  < 568
    static public let IS_IPHONE_5         = IS_IPHONE && SCREEN_MAX_LENGTH == 568
    static public let IS_IPHONE_6         = IS_IPHONE && SCREEN_MAX_LENGTH == 667
    static public let IS_IPHONE_6P        = IS_IPHONE && SCREEN_MAX_LENGTH == 736
    static public let IS_IPHONE_X         = IS_IPHONE && SCREEN_MAX_LENGTH == 812
}
