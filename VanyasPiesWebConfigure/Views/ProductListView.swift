//
//  ProductDetailView.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

// fix -- 
//https://stackoverflow.com/questions/65398123/swiftui-list-foreach-in-combination-with-navigationlink-and-isactive-doesnt


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
                ForEach($productCategory.products) { $product in
                    NavigationLink(destination: ProductDetailView(product: $product)) {
                        VStack(alignment: .leading) {
                            Text(product.productName)
                                .textStyle(BlueTextStyle())
                            Text("\(product.id)  \(product.activeText())")
                                .textStyle(GrayTextStyle())
                        }
                    }.isDetailLink(false)
                }.onMove(perform: moveRow)
                .onDelete(perform: deleteRow)
            }.navigationBarItems(trailing: EditButton())
            
            Spacer()
            Button("Add Product"){
                productCategory.products.append(VPSettings.Product(id: "new-product", productName: "New Product"))
                
            }
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

