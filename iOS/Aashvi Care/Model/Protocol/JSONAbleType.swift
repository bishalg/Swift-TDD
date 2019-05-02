//
//  JSONAbleType.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/2/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation

protocol JSONAbleType {
    static func fromJSON(_: [String: Any]) -> Self
}
