//
//  ListingItemCarouseView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI

struct ListingItemCarouseView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    
            }
        }
        
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ListingItemCarouseView()
}
