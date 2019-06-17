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

    @objc
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
        
        
        self.xAxis.drawGridLinesEnabled = false
        self.leftAxis.drawLabelsEnabled = false
        self.rightAxis.drawLabelsEnabled = false
        self.leftAxis.drawGridLinesEnabled = true
        self.rightAxis.drawGridLinesEnabled = false
        
        self.legend.enabled = false
                
        rightAxis.addLimitLine(ChartLimitLine(limit: 80.0, label: "CBR"))
        
        drawValueAboveBarEnabled = true
        
        animate(xAxisDuration: 0.2, yAxisDuration: 1.0)
        /// Uncomment following to show all XValues
        /// self.xAxis.setLabelCount(xValues.count, force: true)
    }
    
    class BarChartFormatter: NSObject, IAxisValueFormatter {
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

extension HorizontalBarChartView {
    
    override func setBarChartData(xValues: [String], yValues: [Double], label: String) {
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
        self.leftAxis.drawGridLinesEnabled = false
        
        /// Bottom will draw to left - default will be on right
        self.xAxis.labelPosition = .bottom
        
        self.xAxis.drawGridLinesEnabled = false
        self.leftAxis.drawLabelsEnabled = false
        self.rightAxis.drawLabelsEnabled = false
        
        self.leftAxis.drawGridLinesEnabled = false
        self.rightAxis.drawGridLinesEnabled = false
        
        self.xAxis.gridColor = .clear
        self.leftAxis.gridColor = .clear
        self.rightAxis.gridColor = .clear
        
        self.legend.enabled = false
        self.xAxis.granularity = 2.0
    
        /*
        let limitLine = ChartLimitLine(limit: 0, label: "")
        limitLine.lineColor = UIColor.red.withAlphaComponent(0.3)
        limitLine.lineWidth = 1
        self.rightAxis.addLimitLine(limitLine)
         */

        animate(xAxisDuration: 0.2, yAxisDuration: 1.0)
        /// Uncomment following to show all XValues
        self.xAxis.setLabelCount(xValues.count, force: false)
    }

}
