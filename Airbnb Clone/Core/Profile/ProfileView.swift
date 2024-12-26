//
//  ProfileView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 26/12/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30.0) {
            VStack(alignment: .leading, spacing: 5.0) {
                Text("Profile")
                    .font(.title)
                    .fontWeight(.medium)
                Text("Log in to srtart planning your next trip")
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
            
            HStack {
                Text("Don't have an account?")
                Text("Sign up")
                    .fontWeight(.semibold)
                    .underline()
            }

        } .padding()
        
        VStack(spacing: 20) {
            ProfileOptionRowView(imageNmae: "gear", title: "Settings")
            ProfileOptionRowView(imageNmae: "accessibility", title: "Accessibility")
            ProfileOptionRowView(imageNmae: "questionmark.circle", title: "Visit the Help Center")
        }
    }
}

#Preview {
    ProfileView()
}
