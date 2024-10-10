//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Nasir on 01/10/24.
//

import Foundation


struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set{
            // You can provide an argument to the setter to name the newly set value. If you omit the argument, the setter uses newValue as the default name.
            lengthInMinutes = Int(newValue)
        }
        }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
            self.id = id
            self.title = title
            self.attendees = attendees.map{ Attendee( name: $0) }
            self.lengthInMinutes = lengthInMinutes
            self.theme = theme
        }
}

extension DailyScrum{
    struct Attendee: Identifiable{
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum:DailyScrum{
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Riya", "Anaam", "Ayushi"],
                   lengthInMinutes: 5,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Nasir", "Prateek", "Anand", "Nitish"],
                   lengthInMinutes: 3,
                   theme: .orange),
        DailyScrum(title: "SMM",
                   attendees: ["Ishan", "Siddhi", "Zunnor"],
                   lengthInMinutes: 1,
                   theme: .poppy)
    ]
}
