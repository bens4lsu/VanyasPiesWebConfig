//
//  VanyasPiesWebConfigureApp.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

import SwiftUI

@main
struct VanyasPiesWebConfigureApp: App {
    
    static var products = [VPSettings.Product(id: "meat-pie-small", productName: "Small Meat Pie"),
                           VPSettings.Product(id: "meat-pie-large", productName: "Meat Pie Large")
    ]
    
    static var productCategories = [VPSettings.ProductCategory(id: "desert-pies", categoryName: "Desert Pies", products: products),
        VPSettings.ProductCategory(id: "meat-pies", categoryName: "Meat Pies", products: products )
    ]
    
    static var stats: [VPSettings.StatisticSlot : VPSettings.Statistic] =
        [.first : VPSettings.Statistic(description: "Number of pies made", value: 922),
         .second : VPSettings.Statistic(description: "slot 2", value: 415),
         .third : VPSettings.Statistic(description: "NNNNum3 of pies made", value: 89323),
         .fourth : VPSettings.Statistic(description: "xxxxxxx", value: 12)
         
        ]
    
    var vpSettings = VPSettings(productCategories: productCategories, statistics: stats)
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(vpSettings: vpSettings)
        }
    }
}
