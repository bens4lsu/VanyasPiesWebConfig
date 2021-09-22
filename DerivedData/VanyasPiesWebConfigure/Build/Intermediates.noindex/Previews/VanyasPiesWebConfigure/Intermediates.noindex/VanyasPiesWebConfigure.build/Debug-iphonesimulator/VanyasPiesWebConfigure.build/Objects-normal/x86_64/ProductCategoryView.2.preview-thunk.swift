@_private(sourceFile: "ProductCategoryView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ProductCategoryView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductCategoryView.swift", line: 42)
        AnyView(ProductCategoryView(productCategories: productCategories))
    #sourceLocation()
    }
}

extension ProductCategoryView {
    @_dynamicReplacement(for: moveRow(source:destination:)) private func __preview__moveRow(source: IndexSet, destination: Int) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductCategoryView.swift", line: 31)
        productCategories.move(fromOffsets: source, toOffset: destination)
    #sourceLocation()
    }
}

extension ProductCategoryView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductCategoryView.swift", line: 16)
        AnyView(List {
            ForEach(productCategories) { productCategory in
                NavigationLink(destination: ProductListView(products: productCategory.products)) {
                    VStack(alignment: .leading) {
                        Text(productCategory.categoryName)
                            .textStyle(BlueTextStyle())
                        Text(productCategory.id)
                            .textStyle(GrayTextStyle())
                    }
                }.isDetailLink(__designTimeBoolean("#3985.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: false))
            }.onMove(perform: moveRow)
        }.navigationBarItems(trailing: EditButton()))
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ProductCategoryView
import struct VanyasPiesWebConfigure.ProductCategoryView_Previews