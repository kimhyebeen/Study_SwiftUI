//
//  CircleImage.swift
//  SceneryList
//
//  Created by 김혜빈 on 2021/01/08.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image.resizable()
            .frame(width: 200, height: 200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}
