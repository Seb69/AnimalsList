//
//  AnimalDetailView.swift
//  Animal List
//
//  Created by Seb69 on 26.11.2022.
//

import SwiftUI

struct AnimalDetailView: View {
   
    let animal: String
    
    var body: some View {
        Text(animal)
            .font(.largeTitle)
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailView(animal: "Buffalo")
    }
}
