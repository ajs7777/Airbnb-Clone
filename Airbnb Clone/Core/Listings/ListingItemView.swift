//
//  ListingItemView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI

struct ListingItemView: View {    
    var body: some View {
        VStack(spacing: 10.0) {
            ListingItemCarouseView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 2.0) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .foregroundStyle(.black)
            .font(.footnote)
            
        }
    }
}

#Preview {
    ListingItemView()
}
