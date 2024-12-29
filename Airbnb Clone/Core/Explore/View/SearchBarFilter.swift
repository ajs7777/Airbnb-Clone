//
//  SearchBarFilter.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI

struct SearchBarFilter: View {
    
    @Binding var location: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .font(.title3)
            VStack(alignment: .leading){
                Text(location.isEmpty ? "Where to?" : location)
                    .fontWeight(.semibold)
                    .font(.callout)
                Text("\(location.isEmpty ? "Anywhere - " : "")Any Week - Add Guests")
                    .foregroundStyle(.gray)
                    .font(.footnote)
            }
            
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }

            
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .overlay (
            Capsule()
                .stroke(lineWidth: 1)
                .fill(Color.gray.opacity(0.3))
                .shadow(color: .black.opacity(0.4), radius: 2)
            
        )
        .padding()
    }
}

#Preview {
    SearchBarFilter(location: .constant("Los Angeles"))
}
