//
//  LinearChartBar.swift
//  LinearGraph
//
//  Created by 김혜빈 on 2021/01/09.
//

import SwiftUI

struct LinearChartBar: View {
    var value: CGFloat
    var maxValue: CGFloat = 300
    var size: CGFloat = 25
    var backgroundColor: Color = Color.white
    var graphColor: Color = Color.yellow
    var alignment: Alignment = .bottom
    
    var body: some View {
        VStack {
            ZStack(alignment: alignment) {
                if (alignment == .bottom || alignment == .top) {
                    Capsule()
                        .frame(width: size, height: maxValue)
                        .foregroundColor(backgroundColor)
                    
                    Capsule()
                        .frame(width: size, height: value)
                        .foregroundColor(graphColor)
                } else {
                    Capsule()
                        .frame(width: maxValue, height: size)
                        .foregroundColor(backgroundColor)
                    
                    Capsule()
                        .frame(width: value, height: size)
                        .foregroundColor(graphColor)
                }
            }
        }
    }
}
