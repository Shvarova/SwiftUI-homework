//
//  Style.swift
//  SwiftUI-homework
//
//  Created by Дина Шварова on 15.04.2023.
//

import SwiftUI

struct Style: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading, 12)
            .border(Color(.lightGray), width: 0.5)
            .background(Color(.systemGray6))
    }
}
