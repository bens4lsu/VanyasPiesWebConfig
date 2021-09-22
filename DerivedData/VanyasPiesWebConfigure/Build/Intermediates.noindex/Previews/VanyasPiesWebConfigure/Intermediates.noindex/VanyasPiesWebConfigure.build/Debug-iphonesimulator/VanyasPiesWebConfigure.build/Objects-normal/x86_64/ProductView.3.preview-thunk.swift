@_private(sourceFile: "ProductView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ProductDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductView.swift", line: 41)
        AnyView(__designTimeSelection(ProductView(products: __designTimeSelection(products, "#6565.[2].[1].property.[0].[0].arg[0].value")), "#6565.[2].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ProductView {
    @_dynamicReplacement(for: deleteRow(at:)) private func __preview__deleteRow(at offsets: IndexSet) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductView.swift", line: 31)
        __designTimeSelection(products.remove(atOffsets: __designTimeSelection(offsets, "#6565.[1].[3].[0].modifier[0].arg[0].value")), "#6565.[1].[3].[0]")
    #sourceLocation()
    }
}

extension ProductView {
    @_dynamicReplacement(for: moveRow(source:destination:)) private func __preview__moveRow(source: IndexSet, destination: Int) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductView.swift", line: 27)
        __designTimeSelection(products.move(fromOffsets: __designTimeSelection(source, "#6565.[1].[2].[0].modifier[0].arg[0].value"), toOffset: __designTimeSelection(destination, "#6565.[1].[2].[0].modifier[0].arg[1].value")), "#6565.[1].[2].[0]")
    #sourceLocation()
    }
}

extension ProductView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductView.swift", line: 14)
        AnyView(__designTimeSelection(List {
            __designTimeSelection(ForEach(__designTimeSelection(products, "#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value")) { product in
                __designTimeSelection(NavigationLink(destination: /*@START_MENU_TOKEN@*/__designTimeSelection(Text(__designTimeString("#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value", fallback: "Destination")), "#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")/*@END_MENU_TOKEN@*/) {
                    __designTimeSelection(Text(__designTimeSelection(product.productName, "#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value"))
                        .foregroundColor(.blue)
                        .font(.system(size: __designTimeInteger("#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 18))), "#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                }.isDetailLink(__designTimeBoolean("#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: false)), "#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }.onMove(perform: __designTimeSelection(moveRow, "#6565.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value"))
            .onDelete(perform: __designTimeSelection(deleteRow, "#6565.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#6565.[1].[1].property.[0].[0].arg[0].value.[0]")
        }.navigationBarItems(trailing: __designTimeSelection(EditButton(), "#6565.[1].[1].property.[0].[0].modifier[0].arg[0].value")), "#6565.[1].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ProductView
import struct VanyasPiesWebConfigure.ProductDetailView_Previews