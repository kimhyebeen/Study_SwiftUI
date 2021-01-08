//
//  CircleImage.swift
//  GradientDesign
//
//  Created by 김혜빈 on 2021/01/09.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var width: CGFloat = 100
    var height: CGFloat = 100
    
    var body: some View {
        image.resizable()
            .frame(width: width, height: height)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}
