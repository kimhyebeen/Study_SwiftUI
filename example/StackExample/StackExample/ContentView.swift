//
//  ContentView.swift
//  StackExample
//
//  Created by 김혜빈 on 2021/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors:[.red, .orange, .yellow, .green, .blue, .purple, .pink, .red]), center: .center)
                            .edgesIgnoringSafeArea(.all)
            
            Color.red.frame(width: 300, height: 300)
            Color.blue.frame(width: 200, height: 200)
            Color(red: 0.1, green: 0.2, blue: 0.3).frame(width:100,height:100)
            
            VStack {
                Text("12")
                Spacer()
                HStack {
                    Text("9")
                    Spacer()
                    Text("😄")
                    Spacer()
                    Text("3")
                }
                Spacer()
                Text("6")
            }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}
