//
//  IntField.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/23/21.
//

import SwiftUI
import Combine

// https://stackoverflow.com/questions/56799456/swiftui-textfield-with-formatter-not-working

struct IntField: View {
    @Binding var int: Int
    @State private var intString: String  = ""
    var body: some View {
        return TextField("", text: $intString)
        .onReceive(Just(intString)) { value in
            if let i = Int(value) {
                int = i
            }
            else {
                int = 0
                intString = "\(int)"
            }
        }
        .onAppear(perform: {
            intString = "\(int)"
        })
    }
}

//struct IntField_Previews: PreviewProvider {
//    static var previews: some View {
//        @State var int = 12
//        IntField(int: $int)
//    }
//}
