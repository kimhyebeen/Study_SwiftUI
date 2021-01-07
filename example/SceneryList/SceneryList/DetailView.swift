//
//  DetailView.swift
//  SceneryList
//
//  Created by 김혜빈 on 2021/01/08.
//

import SwiftUI

struct DetailView: View {
    var scenery: Scenery
    
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 200)

            CircleImage(image: scenery.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(scenery.title)
                    .font(.title)
                    .foregroundColor(.primary)

                HStack {
                    Text(scenery.subTitle)
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text(scenery.subTitle)
                    .font(.title2)
                Text("나무와 숲, 물방울과 호수, 해와 빛")
            }
            .padding()

            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(scenery: Scenery(title: "풍경 이름", subTitle: "#풍경", photo: "scenery1"))
    }
}
