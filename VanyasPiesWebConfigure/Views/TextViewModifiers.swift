//
//  ModifiedTextViews.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

import SwiftUI

struct BlueTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.blue)
            .font(.system(size: 18))
    }
}

struct GrayTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.gray)
            .font(.system(size:12))
    }
}

extension Text {
    func textStyle<Style: ViewModifier>(_ style: Style) -> some View {
        ModifiedContent(content: self, modifier: style)
    }
}

