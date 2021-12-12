//
//  LybraryScreen.swift
//  AppSUI01
//
//  Created by Sergey Ilyin on 01.12.2021.
//

import SwiftUI

struct LybraryScreen: View {
    
    @EnvironmentObject var albumsViewModel: AlbumsViewModel
    @Binding var selection: Int
    
        var body: some View {
            Button(action: {
                selection = 1
                albumsViewModel.selectedAlbum = albumsViewModel.albums.first
            }) {
                Text("Open the albums")
            }
        }
}

struct LybraryScreen_Previews: PreviewProvider {
    static var previews: some View {
        LybraryScreen(selection: .constant(0))
    }
}
