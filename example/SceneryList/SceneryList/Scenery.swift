//
//  Scenery.swift
//  SceneryList
//
//  Created by 김혜빈 on 2021/01/08.
//

import Foundation
import SwiftUI

struct Scenery: Hashable, Codable {
    var title: String
    var subTitle: String
    var photo: String
    
    var image: Image {
        let img = Image(photo)
        return img
    }
}

let sceneryList = [Scenery(title: "노을 비추는 호숫가", subTitle: "#가을 #호수 #나무", photo: "scenery1"), Scenery(title: "물가에 비치는 연인", subTitle: "#하늘 #연인 #물가", photo: "scenery2"), Scenery(title: "아침해와 인사하는 꽃밭", subTitle: "#햇살 #꽃밭 #언덕", photo: "scenery3")]

struct SceneryRow: View {
    var scenery: Scenery
    
    var body: some View {
        HStack {
            scenery.image
                .resizable()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text(scenery.title).font(Font.system(size: 19))
                Text(scenery.subTitle).font(Font.system(size: 17)).foregroundColor(.gray)
            }

            Spacer()
        }
    }
}
