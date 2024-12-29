//
//  ExploreView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State var showDestinationSearchView : Bool = false
    @StateObject var vm = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, vm: vm)
            } else {
                ScrollView {
                    SearchBarFilter(location: $vm.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy()) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32) {
                        ForEach(vm.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                            }
                        }
                    } .padding()
                    
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
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
