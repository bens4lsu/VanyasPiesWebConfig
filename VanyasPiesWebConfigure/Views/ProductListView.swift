//
//  ProductDetailView.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

import SwiftUI

struct ProductListView: View {
    @Binding var productCategory: VPSettings.ProductCategory
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("ID:  Identifier -- not seen by users.")) {
                    TextField("", text: $productCategory.id)
                }
                Section(header: Text("Description:  as seen by the section heading in the drop-down list")) {
                    TextField("", text: $productCategory.categoryName)
                }
                Toggle("Show On Website", isOn: $productCategory.active)
            }
            
            
            Spacer()
            
            Text("Products")
            List {
                ForEach(productCategory.products.indices) { i in
                    NavigationLink(destination: ProductDetailView(product: $productCategory.products[i])) {
                        VStack(alignment: .leading) {
                            Text(productCategory.products[i].productName)
                                .textStyle(BlueTextStyle())
                            Text("\(productCategory.products[i].id)  |  \(productCategory.products[i].activeText())")
                                .textStyle(GrayTextStyle())
                        }
                    }.isDetailLink(false)
                }.onMove(perform: moveRow)
                .onDelete(perform: deleteRow)
            }.navigationBarItems(trailing: EditButton())
        }
    }
    
    private func moveRow(source: IndexSet, destination: Int){
        productCategory.products.move(fromOffsets: source, toOffset: destination)
    }
    
    private func deleteRow(at offsets: IndexSet) {
        productCategory.products.remove(atOffsets: offsets)
    }
}

struct ProductListDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        StatefulPreviewWrapper(VPSettings().productCategories[1]) {
            ProductListView(productCategory: $0)
        }
    }
}

