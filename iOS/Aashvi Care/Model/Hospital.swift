//
//  Hospital.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 4/30/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation

struct Hospital {
    let id: String
    let name: String
    let coordinate: Coordinate?
    
    init(id: String? = nil,
        name: String? = nil,
        coordinate: Coordinate? = nil) {
        
        self.id = id ?? ""
        self.name = name ?? ""
        self.coordinate = coordinate
    }
}

struct Coordinate {
    let longitude: Decimal
    let latitude: Decimal
}
