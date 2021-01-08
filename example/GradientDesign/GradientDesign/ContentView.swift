//
//  ContentView.swift
//  GradientDesign
//
//  Created by 김혜빈 on 2021/01/09.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct ContentView: View {
    @State var name: String = "NAME"
    @State var role: String = "Role / Job"
    
    var body: some View {
        ZStack {
            LinearGradient(Color("CardBlue"), Color("CardPink")).ignoresSafeArea()
            
            VStack {
                Text(name).font(Font.system(size: 40))
                    .foregroundColor(Color("PaleGray"))
                
                Text(role).font(Font.system(size: 22))
                    .foregroundColor(Color("PaleGray").opacity(0.4))
                    .padding(.bottom, 300+100)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}
