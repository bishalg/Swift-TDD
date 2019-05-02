//
//  Hospital.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 4/30/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//
/// Dependency -
/// Coordinate.swift

import Foundation
import SwiftyJSON

struct Hospital: Codable {
    var id: String
    var name: String
    var coordinate: Coordinate?
}

extension Hospital {
    init(id: String? = nil,
        name: String? = nil,
        coordinate: Coordinate? = nil) {
        
        self.id = id ?? ""
        self.name = name ?? ""
        self.coordinate = coordinate
    }
}

extension Hospital {
    enum CodingKeys: String, CodingKey {
        case id
        case name =  "title"
        case coordinate = "location"
    }
}

extension Hospital: JSONAbleType {
    static func fromJSON(_ json: [String : Any]) -> Hospital {
        let json = JSON(json)
        
        let id = json["id"].stringValue
        let name = json["id"].stringValue
        
        return Hospital(id: id, name: name, coordinate: nil)
    }
}

extension Hospital: CellTitlePresentable {
    var title: String {
        get {
            return name
        }
        set { }
    }
    
    var detail: String {
        get {
            return id
        }
        set { }
    }
}
