//
//  CircleImage.swift
//  Scrumdinger
//
//  Created by Apple on 23/01/25.
//

import SwiftUI

struct CircleImage: View {
    let image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    CircleImage(image: landmarks[0].image)
}
