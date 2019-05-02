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
        
        let id = json[Hospital.CodingKeys.id.rawValue ].stringValue
        let name = json[Hospital.CodingKeys.name.rawValue].stringValue
        
        let coordinateJSON = json[Hospital.CodingKeys.coordinate.rawValue].dictionaryValue
        let coordinate = Coordinate.fromJSON(coordinateJSON)
        
        return Hospital(id: id, name: name, coordinate: coordinate)
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
