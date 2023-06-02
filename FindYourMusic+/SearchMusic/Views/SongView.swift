//
//  SongView.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 02.06.23.
//

import SwiftUI

struct SongView: View {
    @ObservedObject var song: SongViewModel
    
    var body: some View {
        HStack {
            ArtworkView(image: song.artwork)
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text(song.trackName)
                Text(song.artistName)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

struct SongView_Previews: PreviewProvider {
    static var viewModel = SongListViewModel()
    
    static var previews: some View {
        SongView(
            song: SongViewModel(
                song: Song(
                    id: 0,
                    trackName: "Blind",
                    artistName: "Swans",
                    artworkUrl: "placeholder")))
    }
}
