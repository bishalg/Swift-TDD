//
//  HospitalChartsVC.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 6/17/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import UIKit
import Charts

class HospitalChartsVC: UIViewController {

    private var barChartView: BarChartView!
    private var hzBarCharView: HorizontalBarChartView!
    private var months: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChart()
        setupHzChart()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let width = view.frame.size.width - 20
        barChartView.frame = CGRect(x: 10, y: 100, width: width, height: 320)
        hzBarCharView.frame = CGRect(x: 10, y: 450, width: width, height: 320)
    }
    
    private func setupChart() {
        barChartView = BarChartView(frame: view.frame)
        barChartView.isMultipleTouchEnabled = false
        barChartView.noDataText = "Fetching Data ..."
        view.addSubview(barChartView)
        
        months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let values = [98.0, 94.0, 76.0, 83.0, 72.0, 86.0, 94.0, 78.0, 72.0, 94.0, 85.0, 74.0]
        
        barChartView.setBarChartData(xValues: months, yValues: values, label: "Ratings")
        barChartView.setNeedsDisplay()
    }
    
    private func setupHzChart() {
        hzBarCharView = HorizontalBarChartView(frame: view.frame)
        hzBarCharView.isMultipleTouchEnabled = false
        hzBarCharView.noDataText = "Fetching Data ..."
        view.addSubview(hzBarCharView)
        
        let ratings = ["5 stars", "4 stars", "3 stars", "2 stars", "1 star"]
        let values = [2000.0, 3000.0, 500.0, 100.0, 20.0]
        
        hzBarCharView.setBarChartData(xValues: ratings, yValues: values, label: "Ratings")
    }
    
}
