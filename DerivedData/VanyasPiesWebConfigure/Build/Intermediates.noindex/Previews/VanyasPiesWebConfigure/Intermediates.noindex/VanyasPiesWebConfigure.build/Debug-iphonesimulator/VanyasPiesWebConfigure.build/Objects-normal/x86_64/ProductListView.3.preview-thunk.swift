@_private(sourceFile: "ProductListView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ProductListDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductListView.swift", line: 44)
        AnyView(__designTimeSelection(ProductListView(products: __designTimeSelection(products, "#7517.[2].[1].property.[0].[0].arg[0].value")), "#7517.[2].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ProductListView {
    @_dynamicReplacement(for: deleteRow(at:)) private func __preview__deleteRow(at offsets: IndexSet) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductListView.swift", line: 34)
        __designTimeSelection(products.remove(atOffsets: __designTimeSelection(offsets, "#7517.[1].[3].[0].modifier[0].arg[0].value")), "#7517.[1].[3].[0]")
    #sourceLocation()
    }
}

extension ProductListView {
    @_dynamicReplacement(for: moveRow(source:destination:)) private func __preview__moveRow(source: IndexSet, destination: Int) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductListView.swift", line: 30)
        __designTimeSelection(products.move(fromOffsets: __designTimeSelection(source, "#7517.[1].[2].[0].modifier[0].arg[0].value"), toOffset: __designTimeSelection(destination, "#7517.[1].[2].[0].modifier[0].arg[1].value")), "#7517.[1].[2].[0]")
    #sourceLocation()
    }
}

extension ProductListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductListView.swift", line: 14)
        AnyView(__designTimeSelection(List {
            __designTimeSelection(ForEach(__designTimeSelection(products, "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value")) { product in
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ProductDetailView(product: __designTimeSelection(product, "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                    __designTimeSelection(VStack(alignment: .leading) {
                        __designTimeSelection(Text(__designTimeSelection(product.productName, "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value"))
                            .textStyle(__designTimeSelection(BlueTextStyle(), "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0]")
                        __designTimeSelection(Text("\(__designTimeSelection(product.id, "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value.[1].value.arg[0].value"))  |  \(__designTimeSelection(product.activeText(), "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value.[3].value.arg[0].value"))")
                            .textStyle(__designTimeSelection(GrayTextStyle(), "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[0].arg[0].value")), "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1]")
                    }, "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                }.isDetailLink(__designTimeBoolean("#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: false)), "#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }.onMove(perform: __designTimeSelection(moveRow, "#7517.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value"))
            .onDelete(perform: __designTimeSelection(deleteRow, "#7517.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#7517.[1].[1].property.[0].[0].arg[0].value.[0]")
        }.navigationBarItems(trailing: __designTimeSelection(EditButton(), "#7517.[1].[1].property.[0].[0].modifier[0].arg[0].value")), "#7517.[1].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ProductListView
import struct VanyasPiesWebConfigure.ProductListDetailView_Previews