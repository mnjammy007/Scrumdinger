//
//  LandmarkDetail.swift
//  Scrumdinger
//
//  Created by Apple on 23/01/25.
//

import SwiftUI

struct LandmarkDetail: View {
    
    let landmark: Landmark
    
    var body: some View {
        ScrollView(showsIndicators: false){
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack{
                    Text(landmark.park)
                    
                    Spacer()
                    
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    LandmarkDetail(
        landmark: landmarks[0]
    )
}
