@_private(sourceFile: "ContentView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ContentView.swift", line: 56)
        AnyView(ContentView(vpSettings: vpSettings))
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ContentView.swift", line: 15)
        AnyView(NavigationView {
            List{
                    NavigationLink(destination: ProductCategoryView(productCategories: vpSettings.productCategories)) {
                        Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Products"))
                            .textStyle(BlueTextStyle())
                    }.isDetailLink(__designTimeBoolean("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: false))
                    
                    NavigationLink(destination: Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "TBD"))) {
                        Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Statistics"))
                            .textStyle(BlueTextStyle())
                    }
                    Spacer()
                
                    NavigationLink(destination: Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.arg[0].value", fallback: "TBD"))) {
                        Text(__designTimeString("#3905.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Images"))
                            .textStyle(BlueTextStyle())
                    }
                
            }
        }
        .navigationBarTitle(
            Text(__designTimeString("#3905.[1].[1].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: "VanyasPies Config"))
        )
        .navigationViewStyle(StackNavigationViewStyle()))
        
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ContentView
import struct VanyasPiesWebConfigure.ContentView_Previews