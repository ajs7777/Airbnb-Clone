//
//  ExploreView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State var showDestinationSearchView : Bool = false
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchBarFilter()
                        .onTapGesture {
                            withAnimation(.snappy()) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32) {
                        ForEach(0...10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                            }
                        }
                    } .padding()
                    
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                        .navigationBarHidden(true)
                }
            }
            
        }
        
        
        
    }
}

#Preview {
    ExploreView()
}
