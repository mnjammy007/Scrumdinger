//
//  FeatureCard.swift
//  Scrumdinger
//
//  Created by Apple on 28/01/25.
//

import SwiftUI

struct FeatureCard: View {
    
    let landmark : Landmark
    
    var body: some View {
        NavigationLink {
            LandmarkDetail(landmark: landmark)
        } label: {
            landmark.featureImage?
                .resizable()
                .overlay(content: {
                    TextOverlay(landmark: landmark)
                })
        }
        .buttonStyle(.plain)
//        landmark.featureImage?
//            .resizable()
//            .overlay(content: {
//                TextOverlay(landmark: landmark)
//            })
    }
}

struct TextOverlay: View {
    
    let landmark: Landmark
    var gradient: LinearGradient{
        .linearGradient(colors: [.black.opacity(0.6), .black.opacity(0)], startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(landmark: ModelData().featuredLandmarks[0])
        .aspectRatio(3/2, contentMode: .fit)
}
