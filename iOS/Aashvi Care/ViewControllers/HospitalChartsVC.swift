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
    private var months: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChart()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        barChartView.frame = CGRect(x: 10, y: 100, width: 320, height: 320)
    }
    
    private func setupChart() {
        barChartView = BarChartView(frame: view.frame)
        barChartView.isMultipleTouchEnabled = false
        barChartView.noDataText = "Fetching Data ..."
        // barChartView.borderColor
        view.addSubview(barChartView)
        
        months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let values = [98.0, 94.0, 76.0, 83.0, 72.0, 86.0, 94.0, 78.0, 72.0, 94.0, 85.0, 74.0]
        
        barChartView.setBarChartData(xValues: months, yValues: values, label: "Ratings")
        
//        var dataEntries: [BarChartDataEntry] = []
//
//        for i in 0..<months.count {
//            let dataEntry = BarChartDataEntry(x: Double(i), y: values[i])
//            dataEntries.append(dataEntry)
//        }
//
//        let chartDataSet = BarChartDataSet(entries: dataEntries, label: "Ratings")
//        // let chartData = BarChartData(xVals: months, dataSet: chartDataSet)
//        chartDataSet.valueFont = .systemFont(ofSize: 7)
//        chartDataSet.axisDependency = .right
//        chartDataSet.colors = [UIColor(red: 67/255, green: 67/255, blue: 72/255, alpha: 1),
//                      UIColor(red: 124/255, green: 181/255, blue: 236/255, alpha: 1)
//        ]
//        let data = BarChartData(dataSet: chartDataSet)
//        data.barWidth = 5.0
//        barChartView.data = data
        barChartView.setNeedsDisplay()
    }
    
    
}
