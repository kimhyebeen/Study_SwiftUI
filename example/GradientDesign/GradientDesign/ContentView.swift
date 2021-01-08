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

let profiles: [Profile] = [Profile(name: "Emma Watson", role: "Movie Actor and Model", image: "ew"), Profile(name: "James Phelps", role: "Future Bank Account", image: "jp"), Profile(name: "Benedict Cumberbatch", role: "Revolut Account", image: "bc")]

struct ContentView: View {
    @State var index: Int = 0
    
    var body: some View {
        ZStack {
            LinearGradient(Color("CardBlue"), Color("CardPink")).ignoresSafeArea()
            
            VStack {
                Text(profiles[index].name).font(Font.system(size: 40))
                    .foregroundColor(Color("PaleGray"))
                
                Text(profiles[index].role).font(Font.system(size: 22))
                    .foregroundColor(Color("PaleGray").opacity(0.4))
                    .padding(.bottom, 350+100)
                
            }
            
            CardView(profile: profiles[index])
                .padding(.top, 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}
