//
//  FavoriteButton.swift
//  Scrumdinger
//
//  Created by Apple on 23/01/25.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isAdded: Bool
    
    var body: some View {
        Button {
            isAdded.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isAdded ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isAdded ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isAdded: .constant(false))
}
