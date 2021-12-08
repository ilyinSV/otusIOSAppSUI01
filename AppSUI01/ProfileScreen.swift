//
//  ProfileScreen.swift
//  AppSUI01
//
//  Created by Sergey Ilyin on 01.12.2021.
//

import SwiftUI

final class ProfileScreenViewModel: ObservableObject {
    
    @Published var isModalScreenShowed: Bool = false
    
}

struct ProfileScreen: View {
    
    @ObservedObject var profileScreenViewModel: ProfileScreenViewModel = .init()
    
    var body: some View {
        HStack {
            Button { profileScreenViewModel.isModalScreenShowed.toggle() }
            label: {
                VStack {
                    Image(systemName: "note")
                    Text("Show modal screen")
                }
            }.sheet(isPresented: $profileScreenViewModel.isModalScreenShowed) {
                ModalScreen()
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
