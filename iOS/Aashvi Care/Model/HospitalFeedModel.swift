//
//  HospitalFeedModel.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/3/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation
import IGListKit

//  IGListDiffable
class HospitalFeedModel: NSObject, ListDiffable {

    var id: Int?

    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? HospitalFeedModel else {
            return false
        }
        return self == object
    }
    
}

// Equatable
extension HospitalFeedModel  {
    
    static func == (lhs: HospitalFeedModel, rhs: HospitalFeedModel) -> Bool {
        return lhs.id == rhs.id
    }
    
}

