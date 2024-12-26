//
//  MainTabView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 26/12/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            Tab("Explore", systemImage: "magnifyingglass") {
                ExploreView()
            }
            Tab("Wishlist", systemImage: "heart") {
                WishlistView()
            }
            Tab("Profile", systemImage: "person") {
                ProfileView()
            }
            
        }
    }
}

#Preview {
    MainTabView()
}
