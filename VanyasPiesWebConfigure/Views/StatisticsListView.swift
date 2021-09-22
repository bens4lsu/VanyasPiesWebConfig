//
//  StatisticsListView.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/21/21.
//

import SwiftUI

struct StatisticsListView: View {
    
    @Binding var statistics: [VPSettings.StatisticSlot : VPSettings.Statistic]
    
    //let nilStatistic = [VPSettings.StatisticSlot.first : VPSettings.Statistic(description: "invalid statistic", value: 0)]
    
    var body: some View {
        List {
//            ForEach(statistics.sorted( by: { $0.0 < $1.0 }), id: \.key) { key, value in
//                let keyNum = key.rawValue + 1
//                NavigationLink(destination: Text("TBD")) {
//                    VStack(alignment: .leading) {
//                        Text("Slot #\(keyNum)")
//                            .textStyle(BlueTextStyle())
//                        Text("\(value.value)  |  \(value.description)")
//                            .textStyle(GrayTextStyle())
//                    }
//                }.isDetailLink(false)
//            }
            NavigationLink(destination: StatisticsDetailView(statistic: $statistics[.first]))
        }.navigationBarItems(trailing: EditButton())
    }
}

struct StatisticsListView_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(VPSettings().statistics) {
            StatisticsListView(statistics: $0)
        }
    }
}
