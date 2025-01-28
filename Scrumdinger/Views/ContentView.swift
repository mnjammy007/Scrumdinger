//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Apple on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionTab:Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selectionTab, content: {
            CategoryHome()
                .tabItem({
                    Label("Featured", systemImage: "star")
                })
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem({
                    Label("List", systemImage: "list.bullet")
                })
                .tag(Tab.list)
        })
    }
}

#Preview {
    ContentView()
        .environment(ModelData())

}
