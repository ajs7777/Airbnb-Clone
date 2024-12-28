//
//  ListingItemView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing : Listing
    
    var body: some View {
        VStack(spacing: 10.0) {
            ListingItemCarouseView(listings: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(listing.title)
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 2.0) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                    let rating = String(format: "%.2f" , listing.rating)
                    Text("\(rating)")
                }
            }
            .foregroundStyle(.black)
            .font(.footnote)
            
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
