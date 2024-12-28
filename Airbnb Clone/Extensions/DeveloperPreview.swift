//
//  DeveloperPreview.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 28/12/24.
//

import Foundation

class DeveloperPreview {
    
    static let shared = DeveloperPreview()
    
    var listings : [Listing] = [
        Listing(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "john",
            numberofBedrooms: 4,
            numberofBathrooms: 3,
            numberofGuests: 4,
            numberofBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Folrida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        Listing(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "john",
            numberofBedrooms: 4,
            numberofBathrooms: 3,
            numberofGuests: 4,
            numberofBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-2", "listing-3", "listing-4", "listing-1"],
            address: "124 Main St",
            city: "Miami",
            state: "Folrida",
            title: "Miami Beach House",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .tv, .kitchen, .office],
            type: .house
        ),
        Listing(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Steve Johnson",
            ownerImageUrl: "Steve",
            numberofBedrooms: 4,
            numberofBathrooms: 3,
            numberofGuests: 4,
            numberofBeds: 4,
            pricePerNight: 763,
            latitude: 25.7650,
            longitude: -80.1936,
            imageUrls: ["listing-3", "listing-4", "listing-2", "listing-1"],
            address: "124 Main St",
            city: "Miami",
            state: "Folrida",
            title: "Beautiful Miami Apartment in downtown Brickell",
            rating: 4.32,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony],
            type: .apartment
        ),
        Listing(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Harry Styles",
            ownerImageUrl: "Harry",
            numberofBedrooms: 4,
            numberofBathrooms: 3,
            numberofGuests: 4,
            numberofBeds: 4,
            pricePerNight: 763,
            latitude: 34.2,
            longitude: -118.0426,
            imageUrls: ["listing-4", "listing-3", "listing-2", "listing-1"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beautiful Los Angeles home in Malibu",
            rating: 4.97,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .pool],
            type: .apartment
        ),
        Listing(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Timothy Charles",
            ownerImageUrl: "Timothy",
            numberofBedrooms: 4,
            numberofBathrooms: 3,
            numberofGuests: 4,
            numberofBeds: 4,
            pricePerNight: 763,
            latitude: 34.1,
            longitude: -118.1426,
            imageUrls: ["listing-1", "listing-3", "listing-2", "listing-4"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beautiful Los Angeles home in Hollywood Hills",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony],
            type: .apartment
        )
    ]
}
