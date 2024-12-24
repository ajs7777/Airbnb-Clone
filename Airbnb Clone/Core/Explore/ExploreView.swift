//
//  ExploreView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
       NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                   ForEach(0...10, id: \.self) { listings in
                       ListingItemView()
                           
                    }
                } .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
