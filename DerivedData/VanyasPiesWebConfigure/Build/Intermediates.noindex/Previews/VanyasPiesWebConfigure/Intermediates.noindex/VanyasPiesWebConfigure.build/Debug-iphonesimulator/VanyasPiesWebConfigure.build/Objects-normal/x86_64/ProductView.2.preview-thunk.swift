@_private(sourceFile: "ProductView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ProductDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductView.swift", line: 41)
        AnyView(ProductView(products: products))
    #sourceLocation()
    }
}

extension ProductView {
    @_dynamicReplacement(for: deleteRow(at:)) private func __preview__deleteRow(at offsets: IndexSet) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductView.swift", line: 31)
        products.remove(atOffsets: offsets)
    #sourceLocation()
    }
}

extension ProductView {
    @_dynamicReplacement(for: moveRow(source:destination:)) private func __preview__moveRow(source: IndexSet, destination: Int) {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductView.swift", line: 27)
        products.move(fromOffsets: source, toOffset: destination)
    #sourceLocation()
    }
}

extension ProductView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductView.swift", line: 14)
        AnyView(List {
            ForEach(products) { product in
                NavigationLink(destination: /*@START_MENU_TOKEN@*/Text(__designTimeString("#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value", fallback: "Destination"))/*@END_MENU_TOKEN@*/) {
                    Text(product.productName)
                        .foregroundColor(.blue)
                        .font(.system(size: __designTimeInteger("#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 18)))
                }.isDetailLink(__designTimeBoolean("#6565.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: false))
            }.onMove(perform: moveRow)
            .onDelete(perform: deleteRow)
        }.navigationBarItems(trailing: EditButton()))
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ProductView
import struct VanyasPiesWebConfigure.ProductDetailView_Previews