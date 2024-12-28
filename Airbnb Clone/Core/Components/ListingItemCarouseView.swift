//
//  ListingItemCarouseView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI

struct ListingItemCarouseView: View {
    
    let listings: Listing
    
    var body: some View {
        TabView {
            ForEach(listings.imageUrls, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    
            }
        }
        
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ListingItemCarouseView(listings: DeveloperPreview.shared.listings[0])
}
