//
//  FindYourMusic_App.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 01.03.23.
//

import SwiftUI

@main
struct MusicSearchApp: App {
    @AppStorage("appearance") var appearance: Appearance = .automatic

    var body: some Scene {
        WindowGroup {
            HomeView()
                .preferredColorScheme(appearance.getColorScheme())
        }
    }
}
