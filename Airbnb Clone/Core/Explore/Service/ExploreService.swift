//
//  ExploreService.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 28/12/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
