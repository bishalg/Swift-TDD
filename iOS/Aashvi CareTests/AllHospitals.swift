//
//  AllHospitals.swift
//  Aashvi CareTests
//
//  Created by Bishal Ghimire on 4/30/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable
import Aashvi_Care

class HospitalsTest: QuickSpec {

    override func spec() {
        var subject: AllHospitalsTVC!
        
        describe("MoviesTableViewControllerSpec") {
            beforeEach {
                let sb = UIStoryboard(name: "Main", bundle: nil)
                subject = sb.instantiateViewController(withIdentifier: "AllHospitalsTVC") as? AllHospitalsTVC
                _ = subject.view
            }
            
            context("when view is loaded") {
                it("should have 3 Hospitals loaded") {
                    expect(subject.tableView.numberOfRows(inSection: 0)).to(equal(3))
                }
            }
            
            context("Table View") {
                var cell: HospitalCell!
                
                beforeEach {
                    cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as? HospitalCell
                }
                it("should show Medicity title and ID 1 and a dot") {
                    expect(cell.idLabel?.text).to(equal("1."))
                    expect(cell.titleLabel?.text).to(equal("Medicity"))
                }
                
            }
        }
    }

}
