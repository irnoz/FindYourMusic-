//
//  SongListView.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 02.06.23.
//

import SwiftUI

struct SongListView: View {
    @ObservedObject var viewModel: SongListViewModel

    var body: some View {
        List(viewModel.songs) { song in
            SongView(song: song)
        }
        .listStyle(PlainListStyle())
    }
}

struct SongListView_Previews: PreviewProvider {

    static var previews: some View {
        SongListView(viewModel: SongListViewModel())
//        SongListView(viewModel: SongListViewModel().generateSongs())
    }
}
