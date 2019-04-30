//
//  HospitalDataHelper.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 4/30/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation

class HospitalDataHelper {
    
    class func getData() -> [Hospital] {
        return [ Hospital(id: "1", name: "Medicity"),
                 Hospital(id: "2", name: "Grande"),
                 Hospital(id: "3", name: "Bir Hospital")
        ]
    }
    
}
