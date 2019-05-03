//
//  HospitalCellNode.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/3/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import AsyncDisplayKit

class HospitalCellNode: ASCellNode {
    
    var hospital: Hospital!
    
    init(withHospital hospital: Hospital) {
        self.hospital = hospital
        super.init()
    }
    
}
