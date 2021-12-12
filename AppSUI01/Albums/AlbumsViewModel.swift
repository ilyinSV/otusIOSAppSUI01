//
//  AlbumsViewModel.swift
//  AppSUI01
//
//  Created by Sergey Ilyin on 07.12.2021.
//

import SwiftUI

final class AlbumsViewModel: ObservableObject {
    
    @Published var title: String = "Albums"
    @Published var albums = ["Summer 2021",
                             "Vacation 2021",
                             "Xmas 2021"]
    @Published var selectedAlbum: String? = "Xmas 2021"
}
