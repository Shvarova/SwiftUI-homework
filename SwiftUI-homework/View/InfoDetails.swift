//
//  InfoDetails.swift
//  SwiftUI-homework
//
//  Created by Дина Шварова on 15.04.2023.
//

import SwiftUI

struct InfoDetails: View {
    
    var post: Post
    
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Text(post.subtitle)
//                    .font(.title3).fontWeight(.bold)
//                    .foregroundColor(.blue)
                    . modifier(TitleModifier())
                Divider()
                
                Text(post.description)
                    .modifier(DescriptionModifier())
            }
            .padding()
        }
        .navigationTitle(post.author)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGray6))
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: data[0])
    }
}

