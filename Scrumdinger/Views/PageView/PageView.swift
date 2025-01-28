//
//  PageView.swift
//  Scrumdinger
//
//  Created by Apple on 28/01/25.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var pages: [Page]
    @State private var currentPageIndex = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            PageViewController(pages: pages, currentPageIndex: $currentPageIndex)
                .aspectRatio(3/2, contentMode: .fit)
            PageControl(numberOfPages: pages.count, currentPageIndex: $currentPageIndex)
                            .frame(width: CGFloat(pages.count * 18))
                            .padding(.trailing)
        }
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().featuredLandmarks.map{ FeatureCard(landmark: $0) })
}
