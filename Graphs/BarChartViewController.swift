//
//  BarChartViewController.swift
//  Graphs
//
//  Created by Adwait Barkale on 18/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit
import Charts

class BarChartViewController: UIViewController,ChartViewDelegate {

    var barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        barChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
        
        //Provide Data
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10{
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        
        let data = BarChartData(dataSet: set)
        
        barChart.data = data
    }

}
