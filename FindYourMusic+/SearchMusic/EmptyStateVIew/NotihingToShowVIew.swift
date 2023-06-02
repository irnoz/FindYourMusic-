//
//  NotihingToShowVIew.swift
//  FindYourMusic+
//
//  Created by Irakli Nozadze on 02.06.23.
//

import SwiftUI

struct NotihingToShowVIew: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "questionmark")
                .font(.system(size: 85))
                .padding(.bottom)
            Text("Notihing Found")
                .font(.title)
//                .padding(.all)
            Text("Try typeing something else")
                .font(.caption)
//                .padding(.top)
            Spacer()
        }
        .padding()
        .foregroundColor(Color(.systemPurple))
    }
}

struct NotihingToShowVIew_Previews: PreviewProvider {
    static var previews: some View {
        NotihingToShowVIew()
    }
}
