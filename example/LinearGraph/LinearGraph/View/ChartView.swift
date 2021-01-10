//
//  ChartView.swift
//  LinearGraph
//
//  Created by 김혜빈 on 2021/01/09.
//

import SwiftUI

struct ChartView: View {
    var chartList: [CGFloat]
    var size: CGFloat = 25
    var maxValue: CGFloat = 300
    var alignment: Alignment = .bottom
    var spacing: CGFloat = 15
    
    var graphColor: Color = .yellow
    var backgroundColor: Color = .white
    
    var body: some View {
        if (alignment == .bottom || alignment == .top) {
            HStack(spacing: spacing) {
                ForEach(0..<chartList.count) { idx in
                    LinearChartBar(value: chartList[idx], maxValue: maxValue, size: size, backgroundColor: backgroundColor, graphColor: graphColor, alignment: alignment)
                }
            }
        } else {
            VStack(spacing: spacing) {
                ForEach(0..<chartList.count) { idx in
                    LinearChartBar(value: chartList[idx], maxValue: maxValue, size: size, backgroundColor: backgroundColor, graphColor: graphColor, alignment: alignment)
                }
            }
        }
    }
}
