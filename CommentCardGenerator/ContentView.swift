//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Ghosh, Ssnehnil (BJH) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var strenuous: Double = 5.0
    @State private var happiness: Double = 5.0
    @State private var homework: Bool
    
    var feelingHappiness: String {
        if happiness > 8 {
            return "extremely happy"
        } else if happiness > 6 {
            return "happy"
        } else if happiness > 3 {
            return "okay"
        } else {
            return "unhappy"
        }
    }
    
    var feelingStrenuous: String {
        if strenuous > 8 {
            return "too long a"
        } else if strenuous > 6 {
            return "occaisionally a little too much"
        } else if strenuous > 3 {
            return "the perfect amount of"
        } else {
            return "too little"
        }
    }
    
    var body: some View {
        let lotsEW = Binding<Bool> (
                    get : { self.homework },
                    set : { newValue in
                        self.homework = newValue
                    }
                )
        
        VStack {
            HStack {
                Text("Happiness: 0")
                Slider(value: $happiness, in: 0...10, step: 1)
                Text("10")
            }.padding()
            HStack {
                Text("Time Spent: 0")
                Slider(value: $strenuous, in: 0...10, step: 1)
                Text("10")
            }.padding()
            Toggle("Too many EWs", isOn: lotsEW)
            Spacer()
            Text("I am feeling \(feelingHappiness) in this subject. I spend \(feelingStrenuous) time on this subject.").padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
