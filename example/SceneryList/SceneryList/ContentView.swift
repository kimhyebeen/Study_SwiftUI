//
//  ContentView.swift
//  SceneryList
//
//  Created by 김혜빈 on 2021/01/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(sceneryList, id: \.title) { scenery in
                NavigationLink(destination: DetailView(scenery: scenery)) {
                    SceneryRow(scenery: scenery)
                }
            }
            .navigationTitle("List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
