//
//  Settings.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

import Foundation

class VPSettings: ObservableObject, Codable {
    
    struct Product: Identifiable, Codable, Hashable {
        var id: String
        var productName: String
        var active: Bool = true
        
        func activeText() -> String {
            active ? "Shown on site" : "Hidden for now"
        }
    }
    
    struct ProductCategory: Identifiable, Codable, Hashable {
        
        
        var id: String
        var categoryName: String
        var active: Bool = true
        var products: [Product]
        
        func activeText() -> String {
            active ? "Shown on site" : "All products hidden for now"
        }
        
        // MARK: Equatable/Hashable
        static func == (lhs: VPSettings.ProductCategory, rhs: VPSettings.ProductCategory) -> Bool {
            lhs.id == rhs.id
        }
    }
    
    enum StatisticSlot: Int, Codable, Comparable, CaseIterable {
        
        case first = 0, second, third, fourth
        
        static func < (lhs: VPSettings.StatisticSlot, rhs: VPSettings.StatisticSlot) -> Bool {
            lhs.rawValue < rhs.rawValue
        }
    }
    
    struct Statistic: Codable {
        var description: String
        var value: Int
    }
    
    @Published var productCategories: [ProductCategory]
    @Published var statistics: [StatisticSlot: Statistic]

    
    init(productCategories: [ProductCategory], statistics: [StatisticSlot : Statistic]){
        self.productCategories = productCategories
        self.statistics = statistics
    }
    
    
    // #MARK: Codable implementation
    
    enum CodingKeys: String, CodingKey {
        case productCategories
        case statistics
    }
    
    required init(from decoder: Decoder) throws {
        
        struct TmpStat: Decodable {
            var slot: Int
            var statistic: Statistic
        }
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        productCategories = try values.decode([ProductCategory].self, forKey: .productCategories)
        
        let tmpStatistics = try values.decode([TmpStat].self, forKey: .statistics)
        statistics = tmpStatistics.reduce(into: [:], { ret, tmpStat in
            guard let slot = StatisticSlot(rawValue: tmpStat.slot) else {
                return
            }
            ret[slot] = tmpStat.statistic
        })
        
        if statistics.count != 4 {
            throw HostDataController.HostDataControllerError.loadDataIncomplete
        }
    }
    
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(productCategories, forKey: .productCategories)
        
        let statisticsToEncode: [Int: Statistic?] = [VPSettings.StatisticSlot.first.rawValue : statistics[.first],
                                                    VPSettings.StatisticSlot.second.rawValue : statistics[.second],
                                                    VPSettings.StatisticSlot.third.rawValue : statistics[.third],
                                                    VPSettings.StatisticSlot.fourth.rawValue : statistics[.fourth]]
        try container.encode(statisticsToEncode, forKey: .statistics)
    }
    
    
    // #MARK: Data for Preview Canvas
    #if DEBUG
    convenience init() {
        let testProducts = [VPSettings.Product(id: "meat-pie-small", productName: "Small Meat Pie"),
                               VPSettings.Product(id: "meat-pie-large", productName: "Meat Pie Large")
        ]
        
        let testProductCategories = [VPSettings.ProductCategory(id: "desert-pies", categoryName: "Desert Pies", products: testProducts),
            VPSettings.ProductCategory(id: "meat-pies", categoryName: "Meat Pies", products: testProducts )
        ]
        
        let testStats: [VPSettings.StatisticSlot : VPSettings.Statistic] =
            [.first : VPSettings.Statistic(description: "Number of pies made", value: 922),
             .second : VPSettings.Statistic(description: "slot 2", value: 415),
             .third : VPSettings.Statistic(description: "NNNNum3 of pies made", value: 89323),
             .fourth : VPSettings.Statistic(description: "xxxxxxx", value: 12)
             
            ]
        
        self.init(productCategories: testProductCategories, statistics: testStats)
    }
    #endif
    
}

