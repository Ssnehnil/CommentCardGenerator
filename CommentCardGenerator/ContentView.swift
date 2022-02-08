//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Ghosh, Ssnehnil (BJH) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isFeeling: Bool
    @State var isStrenuous: Bool
    var body: some View {
        Form {
            VStack {
                if isFeeling == true {
                    Button("Feeling: 😁", action: { toggleFeeling()})
                } else {
                    Button("Feeling: ☹️", action: { toggleFeeling()})
                }
            }
            Text("I am feeling \(isFeeling ? "happy" : "unhappy") in this subject.")
            VStack {
                if isStrenuous == true {
                    Button("Time: 😁", action: { toggleFeeling()})
                } else {
                    Button("Feeling: ☹️", action: { toggleFeeling()})
                }
            }
        }
    }
    
    func toggleFeeling() {
        isFeeling.toggle()
    }
    
    func toggleStrenuous() {
        isStrenuous.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isFeeling: true, isStrenuous: true)
    }
}
