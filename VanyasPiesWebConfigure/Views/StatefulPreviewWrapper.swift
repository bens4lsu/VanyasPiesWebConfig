//
//  OperatorOverloadBindingOptional.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/22/21.
//


import SwiftUI

#if DEBUG
struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State var value: Value
    var content: (Binding<Value>) -> Content

    var body: some View {
        content($value)
    }

    init(_ value: Value, content: @escaping (Binding<Value>) -> Content) {
        self._value = State(wrappedValue: value)
        self.content = content
    }
}
#endif
