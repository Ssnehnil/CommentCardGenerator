//
//  MainMenuView.swift
//  CommentCardGenerator
//
//  Created by Ssnehnil Ghosh on 23/02/2022.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: ContentView()) {
                        Text("Comment Writer")
                            .foregroundColor(.blue)
                            .font(.system(size:30))
                            .fontWeight(.bold)
                            .padding()
                    }
                }
                HStack {
                    NavigationLink(destination: ReminderView()) {
                        Text("Manage Reminders")
                            .foregroundColor(.blue)
                            .font(.system(size:30))
                            .fontWeight(.bold)
                            .padding()
                    }
                }
                HStack {
                    NavigationLink(destination: ExportView()) {
                        Text("Export Comments")
                            .foregroundColor(.blue)
                            .font(.system(size:30))
                            .fontWeight(.bold)
                            .padding()
                    }
                }
            }.navigationBarTitle("Comment Card App")
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
