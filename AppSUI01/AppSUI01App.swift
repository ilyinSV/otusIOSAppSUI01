//
//  AppSUI01App.swift
//  AppSUI01
//
//  Created by Sergey Ilyin on 30.11.2021.
//

import SwiftUI

@main
struct AppSUI01App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AlbumsViewModel())
        }
    }
}
