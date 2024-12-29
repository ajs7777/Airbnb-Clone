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
    @ObservedObject var vm :  ExploreViewModel
    @State var selectedOption : DestinationSearchOptions = .location
    @State var startDate : Date = Date()
    @State var endDate : Date = Date()
    @State var numGuests : Int = 0
    
    var body: some View {
        VStack {
             // Dismiss and Clear button
            HStack {
                Button {
                    withAnimation(.snappy) {
                        vm.updateListingsForLocation()
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
                Spacer()
                Button("Clear") {
                    if !vm.searchLocation.isEmpty {
                        vm.searchLocation = ""
                        vm.updateListingsForLocation()
                    }
                }
                .foregroundStyle(.black)
                .fontWeight(.medium)
            }
            .padding(.horizontal)
            .padding(.bottom, 30)
            
            // Where to
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.black.opacity(0.5))
                        TextField("Search destinations", text: $vm.searchLocation)
                            .onSubmit {
                                vm.updateListingsForLocation()
                            }
                    }
                    .frame(height: 50)
                    .padding(.horizontal, 10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 1)
                            .fill(Color.gray.opacity(0.5))
                    }
                    
                } else {
                    CollapsedPickerView(title: "Where", description: "Add Description")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 150 : 64)
            .onTapGesture {withAnimation(.snappy()) {selectedOption = .location}}
            
            //Date
            VStack(alignment: .leading) {
                if selectedOption == .date {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    } .foregroundStyle(.gray)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                } else {
                    CollapsedPickerView(title: "When", description: "Add Dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .date ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .date}
            }
            
            // Guests
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                    Text("Who's Coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    
                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        numGuests += 1
                    }
                    onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add Guests")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .guests }
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), vm: ExploreViewModel(service: ExploreService()))
}

struct CollapsibleDestinationViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding()
            .shadow(radius: 10)
        
    }
}


struct CollapsedPickerView : View {
    
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
                
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        
    }
}

