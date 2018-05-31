//
//  InsightViewController.swift
//  ARQ
//
//  Created by Brenda Miao on 5/24/18.
//  Copyright © 2018 Brenda Miao. All rights reserved.
//

import UIKit
import Charts

class InsightViewController: UIViewController, ChartViewDelegate {
    
    @IBOutlet weak var medLineChart: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        medLineChart.noDataText = "Provide at least 2 data points to see chart."
        
        let wellness = [86.0, 20.0]
        let medLogString = ["1", "2", "3"]
        let medLogDouble = [1.0, 2.0]
        
        setChartData(medNames: medLogString, wellness: wellness, medLog: medLogDouble)

    }
    
    func setChartData(medNames : [String], wellness : [Double], medLog : [Double]) {
        // 1 - creating an array of data entries
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<medLog.count {
            let dataEntry = ChartDataEntry(x: medLog[i], y: wellness[i])
            dataEntries.append(dataEntry)
        }
        
        // 2 - create a data set with our array
        let set1: LineChartDataSet = LineChartDataSet(values: dataEntries, label: "Methotrexate")
        set1.axisDependency = .left // Line will correlate with left axis values
        set1.setColor(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 0.5)) // our line's opacity is 50%
        set1.setCircleColor(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)) // our circle will be dark red
        set1.lineWidth = 2.0
        set1.circleRadius = 6.0 // the radius of the node circle
        set1.fillAlpha = 65 / 255.0
        set1.fillColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        set1.highlightColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        set1.drawCircleHoleEnabled = true
        
        //3 - create an array to store our LineChartDataSets
        //var dataSets : [LineChartDataSet] = [LineChartDataSet]()
        //dataSets.append(set1)
        
        //4 - pass our months in for our x-axis label value along with our dataSets
        let data = LineChartData(dataSet: set1)
        data.setValueTextColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        
        //5 - finally set our data
        self.medLineChart.data = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    /**
    func setChart(dataPoints: [String], xValues: [Double], yValues: [Double]) {
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: xValues[i], y: yValues[i])
            //(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
     
        let lineChartDataSet = LineChartDataSet(values: xValues, label: "Methotrexate")
            LineChartDataSet(values: dataEntries, label: medicationName[0])
        
        (yVals: dataEntries, label: "Units Sold")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineChartView.data = lineChartData
 
    }
    **/
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
