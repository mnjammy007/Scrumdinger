//
//  CategoryItem.swift
//  Scrumdinger
//
//  Created by Apple on 28/01/25.
//

import SwiftUI

struct CategoryItem: View {
    
    let landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading){
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    let landmark = ModelData().landmarks[0]
    return CategoryItem(
        landmark: landmark
    )
}
