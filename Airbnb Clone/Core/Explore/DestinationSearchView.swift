//
//  DestinationSearchView.swift
//  Airbnb Clone
//
//  Created by Abhijit Saha on 26/12/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case date
    case guests
}

struct DestinationSearchView: View {
    
    @Binding var show : Bool
    @State var searchText = ""
    @State var selectedOption : DestinationSearchOptions = .location
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40.0) {
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .padding(6)
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 2)
                            .fill(.gray.opacity(0.5))
                    }
            }
            // Where to
            VStack(alignment: .leading, spacing: 15.0) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.black.opacity(0.5))
                        TextField("Search destinations", text: $searchText)
                    } .padding(5)
                        .padding(.horizontal, 10)
                        .frame(height: 50)
                        .overlay {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(lineWidth: 1)
                                .fill(Color.gray.opacity(0.5))
                        }
                    
                } else {
                    CollapsedPickerView(title: "Where", description: "Add Description")
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 60)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy()) {
                    selectedOption = .location

                }
            }
            
            //Date
            
            VStack(alignment: .leading, spacing: 15.0) {
                if selectedOption == .date {
                    
                    HStack{
                        Text("Show Expand View")
                            .font(.title2)
                            .fontWeight(.semibold)
                    } .padding(5)
                        .padding(.horizontal, 10)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        
                    
                } else {
                    CollapsedPickerView(title: "When", description: "Add Dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .date ? 120 : 60)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy()) {
                    selectedOption = .date

                }
            }
            
            // Guests
            VStack(alignment: .leading, spacing: 15.0) {
                if selectedOption == .guests {
                    
                    HStack{
                        Text("Show Expand View")
                            .font(.title2)
                            .fontWeight(.semibold)
                    } .padding(5)
                        .padding(.horizontal, 10)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        
                    
                } else {
                    CollapsedPickerView(title: "Who", description: "Add Guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 60)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy()) {
                    selectedOption = .guests

                }
            }
            
            
            
        } .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView : View {
    
    let title: String
    let description: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundStyle(.gray)
                .fontWeight(.semibold)
            Spacer()
            Text(description)
                .fontWeight(.semibold)
        }
        //        .padding()
        //        .frame(height: 60)
        //        .background(.white)
        //        .clipShape(RoundedRectangle(cornerRadius: 10))
        //        .shadow(radius: 10)
        
    }
}
