//
//  ContentView.swift
//  Animal List
//
//  Created by Seb69 on 26.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var animals: [String] = ["Cat", "Dog", "Mouse"]
    @State var isShowingAddSheet = false
    
    var body: some View {
        NavigationView {
            List(animals, id: \.self) { element in
                NavigationLink(element) {
                    AnimalDetailView(animal: element)
                }
            }
            .navigationTitle("Animals")
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button("Add") {
                        isShowingAddSheet = true
                    }
                }
            }
            .sheet(isPresented: $isShowingAddSheet) {
                AddAnimalView(animals: $animals)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
    }
}
