@_private(sourceFile: "ProductCategoryView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ProductCategoryView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductCategoryView.swift", line: 42)
        AnyView(__designTimeSelection(ProductCategoryView(productCategories: __designTimeSelection(productCategories, "#3985.[2].[1].property.[0].[0].arg[0].value")), "#3985.[2].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ProductCategoryView {
    @_dynamicReplacement(for: moveRow(source:destination:)) private func __preview__moveRow(source: IndexSet, destination: Int) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductCategoryView.swift", line: 31)
        __designTimeSelection(productCategories.move(fromOffsets: __designTimeSelection(source, "#3985.[1].[2].[0].modifier[0].arg[0].value"), toOffset: __designTimeSelection(destination, "#3985.[1].[2].[0].modifier[0].arg[1].value")), "#3985.[1].[2].[0]")
    #sourceLocation()
    }
}

extension ProductCategoryView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductCategoryView.swift", line: 16)
        AnyView(__designTimeSelection(List {
            __designTimeSelection(ForEach(__designTimeSelection(productCategories, "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value")) { productCategory in
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ProductListView(products: __designTimeSelection(productCategory.products, "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                    __designTimeSelection(VStack(alignment: .leading) {
                        __designTimeSelection(Text(__designTimeSelection(productCategory.categoryName, "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value"))
                            .textStyle(__designTimeSelection(BlueTextStyle(), "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0]")
                        __designTimeSelection(Text(__designTimeSelection(productCategory.id, "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value"))
                            .textStyle(__designTimeSelection(GrayTextStyle(), "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[0].arg[0].value")), "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value.[1]")
                    }, "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                }.isDetailLink(__designTimeBoolean("#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: false)), "#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }.onMove(perform: __designTimeSelection(moveRow, "#3985.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#3985.[1].[1].property.[0].[0].arg[0].value.[0]")
        }.navigationBarItems(trailing: __designTimeSelection(EditButton(), "#3985.[1].[1].property.[0].[0].modifier[0].arg[0].value")), "#3985.[1].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ProductCategoryView
import struct VanyasPiesWebConfigure.ProductCategoryView_Previews