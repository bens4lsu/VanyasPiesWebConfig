@_private(sourceFile: "TestView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ContentView2_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/TestView.swift", line: 30)
        AnyView(__designTimeSelection(ContentView2(), "#5414.[2].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ContentView2 {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/TestView.swift", line: 12)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(VStack {
                __designTimeSelection(List {
                    __designTimeSelection(ForEach(__designTimeSelection(myArray, "#5414.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value"), id: \.self) { item in
                        __designTimeSelection(Text(__designTimeSelection(item, "#5414.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value")), "#5414.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0]")
                    }
                    .onDelete { indexSet in
                        __designTimeSelection(myArray.remove(atOffsets: __designTimeSelection(indexSet, "#5414.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.[0].modifier[0].arg[0].value")), "#5414.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.[0]")
                    }, "#5414.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                }, "#5414.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
            }.navigationViewStyle(__designTimeSelection(StackNavigationViewStyle(), "#5414.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value"))        // MOVED HERE
            .navigationBarTitle(__designTimeString("#5414.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "Navigation"))
            .navigationBarItems(trailing: __designTimeSelection(EditButton(), "#5414.[1].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value")), "#5414.[1].[1].property.[0].[0].arg[0].value.[0]")
        }, "#5414.[1].[1].property.[0].[0]"))        // MOVED UPWARD  .navigationViewStyle(StackNavigationViewStyle())
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ContentView2
import struct VanyasPiesWebConfigure.ContentView2_Previews