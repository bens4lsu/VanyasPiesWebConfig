@_private(sourceFile: "ContentView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ContentView.swift", line: 56)
        AnyView(__designTimeSelection(ContentView(vpSettings: __designTimeSelection(vpSettings, "#3905.[2].[3].property.[0].[0].arg[0].value")), "#3905.[2].[3].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ContentView.swift", line: 15)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(List{
                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(ProductCategoryView(productCategories: __designTimeSelection(vpSettings.productCategories, "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value")) {
                        __designTimeSelection(Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Products"))
                            .textStyle(__designTimeSelection(BlueTextStyle(), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
                    }.isDetailLink(__designTimeBoolean("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: false)), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                    
                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "TBD")), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value")) {
                        __designTimeSelection(Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Statistics"))
                            .textStyle(__designTimeSelection(BlueTextStyle(), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value")), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]")
                    }, "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                    __designTimeSelection(Spacer(), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
                
                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.arg[0].value", fallback: "TBD")), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value")) {
                        __designTimeSelection(Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Images"))
                            .textStyle(__designTimeSelection(BlueTextStyle(), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[0].arg[0].value")), "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0]")
                    }, "#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3]")
                
            }, "#3905.[1].[1].property.[0].[0].arg[0].value.[0]")
        }
        .navigationBarTitle(
            __designTimeSelection(Text(__designTimeString("#3905.[1].[1].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: "VanyasPies Config")), "#3905.[1].[1].property.[0].[0].modifier[0].arg[0].value")
        )
        .navigationViewStyle(__designTimeSelection(StackNavigationViewStyle(), "#3905.[1].[1].property.[0].[0].modifier[1].arg[0].value")), "#3905.[1].[1].property.[0].[0]"))
        
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ContentView
import struct VanyasPiesWebConfigure.ContentView_Previews