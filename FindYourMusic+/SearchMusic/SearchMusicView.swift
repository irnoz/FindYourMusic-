//
//  ContentView.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 01.03.23.
//

import SwiftUI

struct SearchMusicView: View {
    
    @ObservedObject var viewModel: SongListViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchTerm: $viewModel.searchTerm)
                if viewModel.songs.isEmpty {
                    if viewModel.searchTerm.isEmpty {
                        EmptyStateView()
                    } else {
                        NotihingToShowVIew()
                    }
                } else {
                    SongListView(viewModel: viewModel)
                }
            }
            .navigationBarTitle("Search Music")
        }
    }
}

struct SearchBar: UIViewRepresentable {
    typealias UIViewType = UISearchBar
    
    @Binding var searchTerm: String
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Type a song, artist, or album name..."
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) { }
    
    func makeCoordinator() -> SearchBarCoordinator {
        return SearchBarCoordinator(searchTerm: $searchTerm)
    }
    
    class SearchBarCoordinator: NSObject, UISearchBarDelegate {
        @Binding var searchTerm: String
        
        init(searchTerm: Binding<String>) {
            self._searchTerm = searchTerm
        }
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            searchTerm = searchBar.text ?? ""
            UIApplication.shared.windows.first { $0.isKeyWindow }?.endEditing(true)
        }
    }
}

struct SearchMusicView_Previews: PreviewProvider {
    static var previews: some View {
        SearchMusicView(viewModel: SongListViewModel())
    }
}
