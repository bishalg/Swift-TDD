//
//  UILabel+Extension.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 4/30/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import UIKit

extension UILabel {
    
    // *** set LineSpacing property in points ***
    func setLineHeight(_ lineHeight: Int) {
        let displayText = text ?? ""
        let attributedString = self.attributedText!.mutableCopy() as! NSMutableAttributedString
        let paragraphStyle = NSMutableParagraphStyle()
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = CGFloat(lineHeight)
        paragraphStyle.alignment = textAlignment
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, displayText.count))
        
        attributedText = attributedString
    }
    
}
