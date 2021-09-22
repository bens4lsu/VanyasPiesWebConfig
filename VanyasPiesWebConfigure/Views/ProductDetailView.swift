//
//  ProductDetailView.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    @Binding var product: VPSettings.Product
    
    var body: some View {
        Form {
            Section(header: Text("ID:  Identifier in email.  Recommend just letters, numbers, - and _ characters")) {
                TextField("Identifier in email.  Recommend just letters, numbers, - and _ characters", text: $product.id)
            }
            Section(header: Text("Description:  as seen by the users in the drop-down list")) {
                TextField("Identifier in email.  Recommend just letters, numbers, - and _ characters", text: $product.productName)
            }
            Toggle("Show On Website", isOn: $product.active)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(VPSettings().productCategories[0].products[0]) {
            ProductDetailView(product: $0)
        }
    }
}
