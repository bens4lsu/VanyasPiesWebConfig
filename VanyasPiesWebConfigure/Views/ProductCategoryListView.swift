//
//  ProductView.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

import SwiftUI


struct ProductCategoryListView: View {
      
    @Binding var productCategories: [VPSettings.ProductCategory]
    
    var body: some View {
        List {
            ForEach($productCategories) { $productCategory in
                NavigationLink(destination: ProductListView(productCategory: $productCategory)) {
                    VStack(alignment: .leading) {
                        Text(productCategory.categoryName)
                            .textStyle(BlueTextStyle())
                        Text("\(productCategory.id)  |  \(productCategory.activeText())")
                            .textStyle(GrayTextStyle())
                    }
                }.isDetailLink(false)
            }.onMove(perform: moveRow)
        }.navigationBarItems(trailing: EditButton())
    }
    
    private func moveRow(source: IndexSet, destination: Int){
        productCategories.move(fromOffsets: source, toOffset: destination)
    }
}


struct ProductCategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(VPSettings().productCategories) {
            ProductCategoryListView(productCategories: $0)
        }
    }
}
