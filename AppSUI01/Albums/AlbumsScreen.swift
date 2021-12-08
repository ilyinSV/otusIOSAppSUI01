//
//  AlbumsScreen.swift
//  AppSUI01
//
//  Created by Sergey Ilyin on 01.12.2021.
//

import SwiftUI

struct AlbumsScreen: View {
    
    @EnvironmentObject var albumsViewModel: AlbumsViewModel
    
    var body: some View {
        NavigationView() {
            AlbumList()
                .navigationTitle(albumsViewModel.title)
        }
    }
}

struct AlbumList: View {
    
    @EnvironmentObject var albumsViewModel: AlbumsViewModel
    
    var body: some View {
        List {
            ForEach(albumsViewModel.albums, id: \.self) { album in
                NavigationLink(destination: AlbumContentScreen(albumName: album),
                               label: {
                    Text(album)
                })
            }
        }
    }
    
}

struct AlbumsScreen_Previews: PreviewProvider {
    static var previews: some View {
        AlbumsScreen()
    }
}
