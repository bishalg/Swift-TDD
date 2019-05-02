//
//  Coordinate.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/2/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Coordinate: Codable {
    var latitude: Double
    var longitude: Double
}

extension Coordinate {
    enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
    }
}

extension Coordinate: JSONAbleType {
    static func fromJSON(_ json: [String : Any]) -> Coordinate {
        let json = JSON(json)
        
        let latitude = json["latitude"].doubleValue
        let longitude = json["longitude"].doubleValue
        
        return Coordinate(latitude: latitude, longitude: longitude)
    }
}

extension Coordinate: Equatable {
    static func == (lhs: Coordinate, rhs: Coordinate) -> Bool {
        return lhs.latitude == rhs.latitude &&
            lhs.longitude == rhs.longitude
    }
}

