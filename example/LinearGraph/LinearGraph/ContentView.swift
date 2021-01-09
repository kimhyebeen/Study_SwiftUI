//
//  ContentView.swift
//  LinearGraph
//
//  Created by 김혜빈 on 2021/01/09.
//

import SwiftUI

struct ContentView: View {
    @State var values: [CGFloat] = [80, 140, 54, 126, 186, 100]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 15) {
                ChartView(chartList: values, size: 15, maxValue: 200, alignment: .bottom, graphColor: .pink, backgroundColor: .black)
                    .animation(Animation.linear(duration: 1))
                    .onTapGesture {
                        self.values = [110, 90, 140, 50, 120, 70]
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
