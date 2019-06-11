//
//  ReusableView.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/2/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
