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
    @State private var lotsEW = true
    @State private var progress: Double = 5.0
    @State private var effort: Double = 5.0
    @State private var achievement: Double = 5.0
    
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
            return "occasionally a little too much"
        } else if strenuous > 3 {
            return "the perfect amount of"
        } else {
            return "too little"
        }
    }
    
    var homework: String {
        if lotsEW {
            return "I find that there is too much EW being set."
        } else {
            return "I think that the amount of EW set is fine."
        }
    }
    
    var measureProgress: String {
        if progress > 8 {
            return "extremely pleased"
        } else if progress > 6 {
            return "satisfied"
        } else if progress > 3 {
            return "dissatisfied"
        } else {
            return "very disappointed"
        }
    }
    
    var measureEffort: String {
        if effort > 8 {
            return "a lot of"
        } else if effort > 5 {
            return "a good amount of"
        } else if effort > 2 {
            return "not enough"
        } else {
            return "almost zero"
        }
    }
    
    var measureAchievement: String {
        if achievement > 8 {
            return "high"
        } else if achievement > 6 {
            return "good"
        } else if achievement > 3 {
            return "okay but can definately be improved"
        } else {
            return "below average and should be better"
        }
    }
    
    var body: some View {
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
            HStack {
                Text("Progress: 0")
                Slider(value: $progress, in: 0...10, step: 1)
                Text("10")
            }.padding()
            HStack {
                Text("Effort: 0")
                Slider(value: $effort, in: 0...10, step: 1)
                Text("10")
            }.padding()
            HStack {
                Text("Achievement: 0")
                Slider(value: $achievement, in: 0...10, step: 1)
                Text("10")
            }.padding()
            HStack {
                Toggle("Too many EWs", isOn: $lotsEW)
            }.padding()
            Spacer()
            Text("I am feeling \(feelingHappiness) in this subject and I spend \(feelingStrenuous) time on this subject. \(homework) So far, I feel \(measureProgress) with my level of progress. Furthermore, I am putting \(measureEffort) effort into this subject, moreover in my opinion my achievement levels are \(measureAchievement).").padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
