@_private(sourceFile: "ProductListView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ProductListDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductListView.swift", line: 44)
        AnyView(ProductListView(products: products))
    #sourceLocation()
    }
}

extension ProductListView {
    @_dynamicReplacement(for: deleteRow(at:)) private func __preview__deleteRow(at offsets: IndexSet) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductListView.swift", line: 34)
        products.remove(atOffsets: offsets)
    #sourceLocation()
    }
}

extension ProductListView {
    @_dynamicReplacement(for: moveRow(source:destination:)) private func __preview__moveRow(source: IndexSet, destination: Int) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductListView.swift", line: 30)
        products.move(fromOffsets: source, toOffset: destination)
    #sourceLocation()
    }
}

extension ProductListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductListView.swift", line: 14)
        AnyView(List {
            ForEach(products) { product in
                NavigationLink(destination: ProductDetailView(product: product)) {
                    VStack(alignment: .leading) {
                        Text(product.productName)
                            .textStyle(BlueTextStyle())
                        Text("\(product.id)  |  \(product.activeText())")
                            .textStyle(GrayTextStyle())
                    }
                }.isDetailLink(__designTimeBoolean("#7517.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: false))
            }.onMove(perform: moveRow)
            .onDelete(perform: deleteRow)
        }.navigationBarItems(trailing: EditButton()))
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ProductListView
import struct VanyasPiesWebConfigure.ProductListDetailView_Previews