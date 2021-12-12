//
//  ContentView.swift
//  AppSUI01
//
//  Created by Sergey Ilyin on 30.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int = 1
    
    var body: some View {
        TabView(selection: $selection) {
            LybraryScreen(selection: $selection)
                .tabItem {
                    Label("Library", systemImage: "photo.fill.on.rectangle.fill")
                }
                .tag(0)
            AlbumsScreen()
                .tabItem {
                    Label("Albums", systemImage: "rectangle.stack.fill")
                }
                .tag(1)
            ProfileScreen()
                .tabItem {
                    Label("You", systemImage: "person")
                }
                .tag(2)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
