//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Nasir on 01/10/24.
//

import SwiftUI


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List($scrums){ $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action: {
                    isPresentingNewScrumView = true
                }){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
            .sheet(isPresented: $isPresentingNewScrumView){
                NewScrumSheet(scrums: $scrums, isPresentingNewScrumView: $isPresentingNewScrumView)
            }
        }
    }
}


//struct ScrumsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrumsView()
//    }
//}
#Preview {
    ScrumsView(scrums: .constant(DailyScrum.sampleData))
}
