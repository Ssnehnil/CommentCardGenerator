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
                    NavigationLink(destination: ContentView(homework: true)) {
                        Text("Comment Writer")
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
