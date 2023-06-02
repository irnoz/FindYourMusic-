//
//  HomeView.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 02.06.23.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            SearchMusicView(viewModel: SongListViewModel())
                .tabItem({
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                })
                .tag(0)
            
            SettingsView()
                .tabItem({
                    VStack {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
                })
                .tag(2)
        }
        .accentColor(Color(.systemPurple))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
