//
//  NibLoadableView.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/2/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import UIKit

protocol NibLoadableView: class { }

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
}
