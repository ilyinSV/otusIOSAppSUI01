//
//  AlbumContentScreen.swift
//  AppSUI01
//
//  Created by Sergey Ilyin on 06.12.2021.
//

import SwiftUI

struct AlbumContentScreen: View {
    
    var albumName: String
    
    var body: some View {
        Text(albumName)
    }
}

struct AlbumContentScreen_Previews: PreviewProvider {
    static var previews: some View {
        AlbumContentScreen(albumName: "")
    }
}
