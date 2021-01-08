//
//  CardView.swift
//  GradientDesign
//
//  Created by 김혜빈 on 2021/01/09.
//

import SwiftUI

struct CardView: View {
    var image: String = "profile"
    var name: String = "name"
    var role: String = "role / job"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .foregroundColor(Color("PaleGray"))
                .frame(width: 300, height: 350)
                .overlay(
                    RoundedStar(cornerRadius: 1.5)
                        .fill(LinearGradient(Color("CardBlue"), Color("CardPink")))
                        .frame(width: 35, height: 35)
                        .padding(15),
                    alignment: .topTrailing
                )
            
            CircleImage(image: Image(image), width: 120, height: 120)
                .padding(.bottom, 70)
            
            Text(name)
                .font(Font.system(size: 25))
                .foregroundColor(Color("DarkGray"))
                .padding(.top, 170)
            
            Text(role)
                .font(Font.system(size: 20))
                .foregroundColor(.gray)
                .padding(.top, 250)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}
