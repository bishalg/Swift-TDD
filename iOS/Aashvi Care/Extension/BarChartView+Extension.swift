//
//  BarChartView+Extension.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 6/17/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation
import Charts

extension BarChartView {

    func setBarChartData(xValues: [String], yValues: [Double], label: String) {
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<yValues.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: yValues[i])
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(entries: dataEntries, label: nil)
        chartDataSet.colors = [UIColor.blue]
        let chartData = BarChartData(dataSet: chartDataSet)
        
        let chartFormatter = BarChartFormatter(labels: xValues)
        
        let xAxis = XAxis()
        xAxis.valueFormatter = chartFormatter
        self.xAxis.valueFormatter = xAxis.valueFormatter
        
        self.data = chartData
        self.isMultipleTouchEnabled = false
        self.dragEnabled = false
        self.scaleXEnabled = false
        self.scaleYEnabled = false
        self.xAxis.labelPosition = .bottom
        
        self.xAxis.drawGridLinesEnabled = false
        self.leftAxis.drawLabelsEnabled = true
        self.rightAxis.drawLabelsEnabled = false
        self.legend.enabled = false
                
        rightAxis.addLimitLine(ChartLimitLine(limit: 80.0, label: "CBR"))
        

        animate(xAxisDuration: 0.2, yAxisDuration: 1.0)
        /// Uncomment following to show all XValues
        /// self.xAxis.setLabelCount(xValues.count, force: true)
    }
    
    private class BarChartFormatter: NSObject, IAxisValueFormatter {
        var labels: [String] = []
        
        func stringForValue(_ value: Double, axis: AxisBase?) -> String {
            return labels[Int(value)]
        }
        
        init(labels: [String]) {
            super.init()
            self.labels = labels
        }
    }
    
}
