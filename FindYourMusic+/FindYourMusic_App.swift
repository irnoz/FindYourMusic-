//
//  FindYourMusic_App.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 01.03.23.
//

import SwiftUI

@main
struct Music_SearchApp: App {
    var body: some Scene {
        WindowGroup {
            SearchMusicView(viewModel: SongListViewModel())
        }
    }
}
