//
//  LineChartViewController.swift
//  Graphs
//
//  Created by Adwait Barkale on 18/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit
import Charts

class LineChartViewController: UIViewController,ChartViewDelegate {

    var lineChart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        //Provide Data
        var entries = [ChartDataEntry]()
        
        for x in 0..<10{
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        
        let data = LineChartData(dataSet: set)
        
        lineChart.data = data
    }

}
