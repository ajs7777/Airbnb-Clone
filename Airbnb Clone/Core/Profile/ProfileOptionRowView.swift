//
//  ProfileOptionRowView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 26/12/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    
    var imageNmae: String
    var title: String
    
    var body: some View {
        VStack {
            HStack(spacing: 5) {
                Image(systemName: imageNmae)
                Text(title)
                Spacer()
                Image(systemName: "chevron.right")
                
            }
            Divider()
        }  .padding(.horizontal)
    }
}

#Preview {
    ProfileOptionRowView(imageNmae: "gear", title: "Settings")
}
