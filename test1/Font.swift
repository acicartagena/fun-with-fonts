//
//  Font.swift
//  test1
//
//  Created by Angela Cartagena on 13/08/2016.
//  Copyright © 2016 acicartagena. All rights reserved.
//

import Foundation
import UIKit

enum TextStyle: String {
    case title1
    case body
    
    func equivalentUIFontTextStyle() -> String {
        switch self {
        case .title1: return UIFontTextStyleTitle1
        case .body: return UIFontTextStyleBody
        }
    }
}

extension UIFont {
    convenience init(textStyle: TextStyle) {
        let fontDescriptor = UIFontDescriptor.fontDescriptor(forTextStyle: textStyle)
        self.init(descriptor: fontDescriptor, size: 0)
    }
}

private let fontName = "Osgood Sans"

extension UIFontDescriptor {
    
    class func fontDescriptor(forTextStyle textStyle: TextStyle) -> UIFontDescriptor {
        let contentSizeCategory = UIApplication.sharedApplication().preferredContentSizeCategory
        switch contentSizeCategory {
        case UIContentSizeCategoryExtraSmall:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 17)
            case .body: return UIFontDescriptor(name: fontName, size: 12)
            }
        case UIContentSizeCategorySmall:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 18)
            case .body: return UIFontDescriptor(name: fontName, size: 13)
            }
        case UIContentSizeCategoryMedium:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 19)
            case .body: return UIFontDescriptor(name: fontName, size: 14)
            }
        case UIContentSizeCategoryLarge:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 20)
            case .body: return UIFontDescriptor(name: fontName, size: 15)
            }
        case UIContentSizeCategoryExtraLarge:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 21)
            case .body: return UIFontDescriptor(name: fontName, size: 16)
            }
        case UIContentSizeCategoryExtraExtraLarge:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 22)
            case .body: return UIFontDescriptor(name: fontName, size: 17)
            }
        case UIContentSizeCategoryExtraExtraExtraLarge:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 23)
            case .body: return UIFontDescriptor(name: fontName, size: 18)
            }
        case UIContentSizeCategoryAccessibilityMedium:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 23)
            case .body: return UIFontDescriptor(name: fontName, size: 18)
            }
        case UIContentSizeCategoryAccessibilityLarge:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 24)
            case .body: return UIFontDescriptor(name: fontName, size: 19)
            }
        case UIContentSizeCategoryAccessibilityExtraLarge:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 24)
            case .body: return UIFontDescriptor(name: fontName, size: 19)
            }
        case UIContentSizeCategoryAccessibilityExtraExtraLarge:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 25)
            case .body: return UIFontDescriptor(name: fontName, size: 20)
            }
        case UIContentSizeCategoryAccessibilityExtraExtraExtraLarge:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 26)
            case .body: return UIFontDescriptor(name: fontName, size: 21)
            }
        default:
            switch textStyle {
            case .title1: return UIFontDescriptor(name: fontName, size: 19)
            case .body: return UIFontDescriptor(name: fontName, size: 14)
            }
        }
    }
}