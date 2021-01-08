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

let profiles: [Profile] = [Profile(name: "Emma Watson", role: "Movie Actor and Model", image: "ew"), Profile(name: "James Phelps", role: "Future Bank Account", image: "jp"), Profile(name: "Benedict", role: "Revolut Account", image: "bc")]

struct ContentView: View {
    @State var index: Int = 1
    
    var body: some View {
        ZStack {
            LinearGradient(Color("CardBlue"), Color("CardPink")).ignoresSafeArea()
            
            GeometryReader { geometry in
                
                VStack(alignment: .center) {
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 14) {
                            Spacer(minLength: (geometry.size.width-300)/2 - 14)
                            ForEach(0..<profiles.count) { idx in
                                CardView(profile: profiles[idx])
                            }
                            Spacer(minLength: (geometry.size.width-300)/2 - 14)
                        }
                    })
                    
                }.frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}
