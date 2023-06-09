//
//  InfoView.swift
//  SwiftUI-homework
//
//  Created by Дина Шварова on 15.04.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(data) { post in

                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                   InfoRow(post: post)
                }
            }
            .navigationTitle("Art")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
