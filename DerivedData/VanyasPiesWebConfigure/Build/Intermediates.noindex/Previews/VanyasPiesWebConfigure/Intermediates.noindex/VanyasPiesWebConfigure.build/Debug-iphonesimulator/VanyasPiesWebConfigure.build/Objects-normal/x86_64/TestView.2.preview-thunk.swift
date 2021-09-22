@_private(sourceFile: "TestView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ContentView2_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/TestView.swift", line: 30)
        AnyView(ContentView2())
    #sourceLocation()
    }
}

extension ContentView2 {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/TestView.swift", line: 12)
        AnyView(NavigationView {
            VStack {
                List {
                    ForEach(myArray, id: \.self) { item in
                        Text(item)
                    }
                    .onDelete { indexSet in
                        myArray.remove(atOffsets: indexSet)
                    }
                }
            }.navigationViewStyle(StackNavigationViewStyle())        // MOVED HERE
            .navigationBarTitle(__designTimeString("#5414.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "Navigation"))
            .navigationBarItems(trailing: EditButton())
        })        // MOVED UPWARD  .navigationViewStyle(StackNavigationViewStyle())
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ContentView2
import struct VanyasPiesWebConfigure.ContentView2_Previews