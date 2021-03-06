//
//  CardView.swift
//  GradientDesign
//
//  Created by 김혜빈 on 2021/01/09.
//

import SwiftUI

struct CardView: View {
    var profile: Profile = Profile(name: "profile", role: "name", image: "role / job")
    
    var body: some View {
        ZStack {
            VStack {
                Text(profile.name).font(Font.system(size: 40))
                    .foregroundColor(Color("PaleGray"))
                    .frame(width: 300, alignment: .center)
                
                Text(profile.role).font(Font.system(size: 22))
                    .foregroundColor(Color("PaleGray").opacity(0.4))
                    .padding(.bottom, 60)
                    .frame(width: 300, alignment: .center)
                
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(Color("PaleGray"))
                    .frame(width: 300, height: 350)
                    .overlay(
                        RoundedStar(cornerRadius: 1.5)
                            .fill(LinearGradient(Color("CardBlue"), Color("CardPink")))
                            .frame(width: 35, height: 35)
                            .padding(15),
                        alignment: .topTrailing
                    ).opacity(0.9)
                    .overlay(
                        CircleImage(image: Image(profile.image), width: 120, height: 120)
                            .padding(.bottom, 70)
                    )
                    .overlay(
                        Text(profile.name)
                            .font(Font.system(size: 25))
                            .foregroundColor(Color("DarkGray"))
                            .padding(.top, 170)
                    )
                    .overlay(
                        Text(profile.role)
                            .font(Font.system(size: 20))
                            .foregroundColor(.gray)
                            .padding(.top, 250)
                    )
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}
