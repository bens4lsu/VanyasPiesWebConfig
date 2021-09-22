@_private(sourceFile: "ProductDetailView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension ProductDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductDetailView.swift", line: 29)
        AnyView(__designTimeSelection(ProductDetailView(product: __designTimeSelection(VPSettings.Product(id: __designTimeString("#6495.[2].[0].property.[0].[0].arg[0].value.arg[0].value", fallback: "meat-pie-small"), productName: __designTimeString("#6495.[2].[0].property.[0].[0].arg[0].value.arg[1].value", fallback: "Small Meat Pie")), "#6495.[2].[0].property.[0].[0].arg[0].value")), "#6495.[2].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ProductDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/ProductDetailView.swift", line: 15)
        AnyView(__designTimeSelection(Form {
            __designTimeSelection(Section(header: __designTimeSelection(Text(__designTimeString("#6495.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "ID:  Identifier in email.  Recommend just letters, numbers, - and _ characters")), "#6495.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value")) {
                __designTimeSelection(TextField(__designTimeString("#6495.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Identifier in email.  Recommend just letters, numbers, - and _ characters"), text: __designTimeSelection($product.id, "#6495.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value")), "#6495.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }, "#6495.[1].[1].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Section(header: __designTimeSelection(Text(__designTimeString("#6495.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Description:  as seen by the users in the drop-down list")), "#6495.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value")) {
                __designTimeSelection(TextField(__designTimeString("#6495.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Identifier in email.  Recommend just letters, numbers, - and _ characters"), text: __designTimeSelection($product.productName, "#6495.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[1].value")), "#6495.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0]")
            }, "#6495.[1].[1].property.[0].[0].arg[0].value.[1]")
            __designTimeSelection(Toggle(__designTimeString("#6495.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value", fallback: "Show On Website"), isOn: __designTimeSelection($product.active, "#6495.[1].[1].property.[0].[0].arg[0].value.[2].arg[1].value")), "#6495.[1].[1].property.[0].[0].arg[0].value.[2]")
        }, "#6495.[1].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.ProductDetailView
import struct VanyasPiesWebConfigure.ProductDetailView_Previews