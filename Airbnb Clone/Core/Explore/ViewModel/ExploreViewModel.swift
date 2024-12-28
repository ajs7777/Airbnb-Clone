//
//  ExploreViewModel.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 28/12/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service : ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch  {
            print("DEBUG: Error fetching listings: \(error.localizedDescription)")
        }
    }
}
