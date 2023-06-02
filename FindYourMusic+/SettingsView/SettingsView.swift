//
//  SettingsView.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 02.06.23.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("appearance") var appearance: Appearance = .automatic
    @AppStorage("favourites") var showFavourites = false

    var body: some View {
        List {
            Text("Settings")
                .font(.largeTitle)

            Section(header: Text("Appearance")) {
                Picker("", selection: $appearance) {
                    ForEach(Appearance.allCases) { appearance in
                        Text(appearance.name).tag(appearance)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }

            Section(header: Text("Favourites")) {
                Toggle(isOn: $showFavourites) {
                    Text("Show Favourites")
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
