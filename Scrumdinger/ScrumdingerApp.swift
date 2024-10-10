//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Apple on 30/09/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
