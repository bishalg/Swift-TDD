//
//  HospitalTests.swift
//  Aashvi CareTests
//
//  Created by Bishal Ghimire on 5/2/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable
import Aashvi_Care

class HospitalTests: QuickSpec {

    override func spec() {
        it("Converts from JSON") {
            
            let id = "1"
            let name = "Medicity"
            let latitude = 12.1234112
            let longitude = 34.2342452
            let coordinate = Coordinate(latitude: latitude, longitude: longitude)
            
            let data = [
                "id" : id,
                "title": name,
                "location": ["latitude": latitude, "longitude": longitude]
                ] as [String : Any]
            
            let hospital = Hospital.fromJSON(data)
            
            expect(hospital.id) == id
            expect(hospital.name) == name
            expect(hospital.coordinate) == coordinate
        }
        
    }
    
}
