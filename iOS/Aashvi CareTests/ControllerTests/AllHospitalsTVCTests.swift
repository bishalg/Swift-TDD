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

class AllHospitalsTVCTest: QuickSpec {

    override func spec() {
        var vc: AllHospitalsTVC!
        
        describe("MoviesTableViewControllerSpec") {
            beforeEach {
                vc = AllHospitalsTVC()
                _ = vc.view
            }
            
            context("when view is loaded") {
                it("should have 3 Hospitals loaded") {
                    expect(vc.tableView.numberOfRows(inSection: 0)).to(equal(3))
                }
            }
            
            context("Table View") {
                var cell: CellTitleDetails!
                
                beforeEach {
                    cell = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as? CellTitleDetails
                }
                it("should show Medicity as title and details as ID 1") {
                    expect(cell.titleLabel?.text).to(equal("Medicity"))
                    expect(cell.detailLabel?.text).to(equal("1"))
                }
                
            }
        }
    }

}
