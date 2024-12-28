//
//  ListingDetailView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 24/12/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    
    var body: some View {
        ScrollView {
                ZStack(alignment: .topLeading){
                    ListingItemCarouseView(listings: listing)
                        .frame(height: 320)
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .background{
                                Circle()
                                    .fill(.white)
                                    .frame(width:32, height: 32)
                            }
                            .padding(30)
                            .padding(.vertical, 30)
                    }

                }
                // Name, rating and location
                VStack(alignment: .leading, spacing: 8.0) {
                    Text(listing.title)
                        .font(.title)
                        .fontWeight(.semibold)
                    VStack(alignment: .leading, spacing: 5.0) {
                        HStack(spacing: 2.0) {
                            Image(systemName: "star.fill")
                            let rating = String(format: "%.2f" , listing.rating)
                            Text("\(rating)-")
                            Text("28 reviews")
                                .underline()
                                .fontWeight(.semibold)
                        }
                        Text("\(listing.city), \(listing.state)")
                    } .font(.footnote)
                } .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                Divider()
                
                // Host name and Image
                HStack {
                    VStack(alignment: .leading, spacing: 3.0){
                        Text("Entire \(listing.type) hosted by")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text(listing.ownerName)
                            .font(.headline)
                            .fontWeight(.semibold)
                        HStack(spacing: 2.0) {
                            Text("\(listing.numberofGuests) guests -")
                            Text("\(listing.numberofBedrooms) bedrooms -")
                            Text("\(listing.numberofBeds) beds -")
                            Text("\(listing.numberofBathrooms) baths")
                        } .font(.caption)
                    }
                    Spacer()
                    Image(listing.ownerImageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                } .padding()
                Divider()
                
                //Suggestion
            VStack(alignment: .leading, spacing: 10.0){
                    ForEach(listing.features) { feature in
                        HStack(spacing: 15.0){
                            Image(systemName: feature.imageName)
                            VStack(alignment: .leading){
                                Text(feature.title)
                                    .fontWeight(.semibold)
                                Text(feature.subtitle)
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                } .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Divider()
                
                VStack(alignment: .leading, spacing: 10.0){
                    Text("Where you'll sleep")
                        .font(.title3)
                        .fontWeight(.bold)
                    ScrollView (.horizontal){
                        HStack(spacing: 10.0){
                            ForEach(1...listing.numberofBedrooms, id: \.self) { bedroom in
                                VStack(alignment: .leading, spacing: 5.0) {
                                    Image(systemName: "bed.double")
                                        .font(.title3)
                                    Text("bedroom \(bedroom)")
                                        .fontWeight(.semibold)
                                }
                                .frame(width: 150, height: 120)
                                //.background(.red)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.gray)
                                        .frame(width: 140, height: 100)
                                )
                            }
                        }
                    }
                }
                .padding()
                Divider()
                
                VStack(alignment: .leading, spacing: 15.0){
                    Text("What this place offers")
                        .font(.title3)
                        .fontWeight(.bold)
                    VStack(alignment: .leading, spacing: 20.0) {
                        ForEach(listing.amenities) { amenity in
                            HStack(spacing: 20.0){
                                Image(systemName: amenity.imageName)
                                    .frame(width: 20, height: 20)
                                    .font(.title3)
                                Text(amenity.title)
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                Divider()
                
                VStack(alignment: .leading, spacing: 15.0){
                    Text("Where you'll be")
                        .font(.title3)
                        .fontWeight(.bold)
                    Map()
                        .frame(width: 370, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }.padding()
         
        }
        .toolbarVisibility(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .fontWeight(.bold)
                        Text("Total before taxes")
                        Text("Oct 15 - 20")
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                    
                }.padding(.horizontal, 30)
            } .background(.thinMaterial)
        }
        
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
