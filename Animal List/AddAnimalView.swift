//
//  AddAnimalView.swift
//  Animal List
//
//  Created by Seb69 on 26.11.2022.
//

import SwiftUI

struct AddAnimalView: View {
    
    @State var animalName: String = ""
    @Binding var animals: [String]
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 15) {
            TextField("Animal Name", text: $animalName)
            Button("Add") {
                animals.append(animalName)
                presentationMode.wrappedValue.dismiss()
            }
            .disabled(animalName.isEmpty)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct AddAnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AddAnimalView(animals: .constant([]))
    }
}
