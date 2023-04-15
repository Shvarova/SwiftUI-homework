//
//  Text.swift
//  SwiftUI-homework
//
//  Created by Дина Шварова on 15.04.2023.
//

import SwiftUI

struct DescriptionModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Open Sans", size: 16))
            .foregroundColor(.gray)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold(true)
            .font(.system(size: 32.0))
            .background(.black)
            .foregroundColor(.white)
    }
}
