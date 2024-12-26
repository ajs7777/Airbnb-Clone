//
//  WishlistView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 26/12/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40.0){
                
                VStack(alignment: .leading) {
                    Text("Log in to view your wishlists")
                        .fontWeight(.bold)
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.subheadline)
                }
                
                Button {
                    
                } label: {
                    Text("Log in")
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                
                Spacer()
            } .padding()
                
                .navigationTitle(Text("Wishlists"))
        }
    }
}

#Preview {
    WishlistView()
}
