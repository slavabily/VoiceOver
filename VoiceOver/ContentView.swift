//
//  ContentView.swift
//  VoiceOver
//
//  Created by slava bily on 12/5/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705-unsplash",
        "nicolas-tissot-335096-unsplash"
    ]
    
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks"
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    @State private var estimate = 25.0
    @State private var rating = 3
    
    var body: some View {
        //        Image(pictures[selectedPicture])
        //            .resizable()
        //            .scaledToFit()
        //            .accessibility(label: Text(labels[selectedPicture]))
        //            .accessibility(addTraits: .isButton)
        //            .accessibility(removeTraits: .isImage)
        //            .onTapGesture {
        //                self.selectedPicture = Int.random(in: 0...3)
        //        }
        
//        Image(decorative: "ales-krivec-15949")
//            .accessibility(hidden: true)
        
//        VStack {
//            Text("Your score is")
//            Text("1000")
//                .font(.title)
//        }
//        .accessibilityElement(children: .combine)
//        .accessibility(label: Text("Your score is 1000"))
        
//        Slider(value: $estimate, in: 0...50)
//        .padding()
//        .accessibility(value: Text("\(estimate)"))
        
        Stepper("Rate our service: \(rating)/5", value: $rating, in: 1...5)
        .accessibility(value: Text("\(rating) out of 5"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
