//
//  EmptyStateView.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 02.06.23.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack {
            Spacer()
//            Image(systemName: "music.note")
            Image(systemName: "magnifyingglass")
                .font(.system(size: 85))
                .padding(.bottom)
            Text("Searching for music...")
                .font(.title)
            Spacer()
        }
        .padding()
        .foregroundColor(Color(.systemPurple))
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
