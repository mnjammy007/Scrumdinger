//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Apple on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())

}
