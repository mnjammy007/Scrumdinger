//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Apple on 30/09/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
