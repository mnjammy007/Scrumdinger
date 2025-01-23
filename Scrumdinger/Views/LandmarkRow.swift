//
//  LandmarkRow.swift
//  Scrumdinger
//
//  Created by Apple on 23/01/25.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill").foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    Group{
        LandmarkRow(
            landmark: landmarks[0]
        )
        LandmarkRow(
            landmark: landmarks[1]
        )
    }
}
